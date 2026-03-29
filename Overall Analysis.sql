create database "Looker Ecommerce Analysis";

use "Looker Ecommerce Analysis";

select * from users;
select * from products;
select * from orders;
select * from inventory_items;
select * from order_items;


-- How much are we selling monthly? Is it high or low compared to last month? --

select year(oi.created_at) as Year ,Month(oi.created_at) as Month,
sum(oi.sale_price * o.num_of_item) as Revenue,
count(Distinct oi.order_id) as order_count,
count(Distinct oi.user_id) as Customer_Purchased
From order_items as oi
Left Join orders as o
on oi.order_id = o.order_id
where oi.status Not in('Cancelled','Returned')
Group by year(oi.created_at),Month(oi.created_at)
order by year(oi.created_at),Month(oi.created_at) desc;

-- Who are our customers? --

with cte as(

select oi.user_id,
sum(case when u.gender = 'M' Then 1 Else Null End) As male,
sum(case when u.gender = 'F' Then 1 Else Null End) As Female,
u.country
from order_items as oi
Inner Join users as u
On oi.id=u.id
where oi.status not in ('Cancelled','returned')
Group by oi.user_id, u.country

)

Select c.country,
Count(distinct c.user_id) As Customer_Count,
count(c.male) as Male,
count(c.female) as Female
from cte as c
group by c.country
order by Customer_Count Desc;

-- Customers by Gender -- 

select o.gender,
sum(oi.sale_price * o.num_of_item) as Revenue,
sum(o.num_of_item) as Quantity
from order_items as oi
Left Join orders as o
on oi.order_id = o.order_id
where oi.status not in ('Cancelled','Returned')
group by o.gender
order by revenue Desc;


-- Customers By Age Group -- 

select 
	CASE 
		When u.age < 15 then 'Kid'
		When u.age Between 15 And 24 then 'Teenager'
		When u.age Between 25 And 50 then 'Adult'
		when u.age >50 then 'Senior' End as Age_Group,
		count(Distinct oi.user_id) as Total_Customer
	From order_items as oi
Left Join users as u
on oi.user_id=u.id
where oi.status not in ('Returned', 'Cancelled')
group by CASe
		When u.age < 15 then 'Kid'
		When u.age Between 15 And 24 then 'Teenager'
		When u.age Between 25 And 50 then 'Adult'
		when u.age >50 then 'Senior' End 
order by Total_Customer Desc ;


-- What are we selling the most and the least? What are we making money on? --

select * from products;
select * from order_items;
select * from orders;

select 
	p.brand,
	sum(oi.sale_price * o.num_of_item) as Revenue,
	sum(num_of_item) as Total_Quantity
	From order_items as oi
Left Join orders as o ON oi.order_id = o.order_id
Left Join Products as p ON oi.product_id = p.id
where oi.status not in ('Returned','cancelled')
Group By p.Brand
Order By Revenue Desc ;

-- Category wise Sales --

select 
	p.Category,
	sum(oi.sale_price * o.num_of_item) as Revenue,
	sum(num_of_item) as Total_Quantity
	From order_items as oi
Left Join orders as o ON oi.order_id = o.order_id
Left Join Products as p ON oi.product_id = p.id
where oi.status not in ('Returned','cancelled')
Group By p.Category
Order By Revenue Desc ;

-- Brands Cancel & Return--


	SELECT 
  p.brand,
  SUM(CASE WHEN oi.status = 'Cancelled' THEN 1 ELSE null END) AS Cancelled,
  SUM(CASE WHEN oi.status = 'Returned' THEN 1 ELSE null END) AS Returned
FROM order_items oi
LEFT JOIN products p
ON oi.product_id = p.id
GROUP BY  p.brand
ORDER BY 2 DESC;


--Category Wise Cancel & Return -- 

Select 
p.category,
SUM(CASE WHEN oi.status = 'Cancelled' THEN 1 ELSE null END) AS Cancelled,
SUM(CASE WHEN oi.status = 'Returned' THEN 1 ELSE null END) AS Returned
from order_items as oi
LEFT JOIN products as p
ON oi.product_id = p.id
Group by p.category
order by 2 desc ;


-- What marketing channel are we doing well on? --

select * from users;
select * from order_items;

select 
	u.traffic_source,
	count(Distinct oi.user_id) as Total_Customer
	From order_items as oi
Left Join users as u
ON oi.user_id = u.id
where oi.status not in ('returned','Cancelled')
group by u.traffic_source
order By 2 Desc ;


-- We will provide promotions during Christmas and New Year celebrations for female customers in United States via email. --
-- Please provide data on how many customers we should promote through Email --

Select id, email
from users
where Country = 'United states' And Gender = 'F'
order by id ;


-- Provide a list of 10 customer ids with the largest total overall purchase. We will give a discount for campaign --

select Top 10
	oi.user_id,
	u.email,
Sum (oi.sale_price* o.num_of_item) as Total_Purchase
	From Order_items as oi
	LEFT JOIN orders as o On oi.order_id = o.order_id
LEFT JOIN users as u on oi.user_id = u.id 
where oi.status not in ('cancelled','returned')
group by oi.user_id,u.email
order by Total_Purchase Desc ;


-- Total Number of Orders

select * from orders;
select * from order_items;

-- yearly

select year(created_at) as Yearly,
		COUNT(Distinct order_id) as Total_order
		FROM order_items 
	Where status not in ('cancelled','returned')
	group by year(created_at)
	order by Total_order DESC ;

-- ========================================================================================================
-- ========================================================================================================
-- Total Revenue

--yearly

Select year(oi.created_at) as Yearly,
		 Round(Sum(oi.sale_price*o.num_of_item),2) Total_Revenue
		FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
where oi.status in ('Shipped','Complete')
Group by year(oi.created_at)
Order by Total_Revenue DESC ;

-- ========================================================================================================
-- ========================================================================================================
-- Cost of Goods Sold 

--yearly

select * from inventory_items;
Select  * from order_items;


Select year(created_at) Yearly,
		Round(Sum(cost),2) Total_Cost
		FROM inventory_items
	Group By year(created_at)
	Order By Total_Cost DESC;

-- Product Wise Cost of Goods Sold --


Select
		product_category,
		Round(Sum(cost),2) Total_Cost
		FROM inventory_items
	Group By product_category
	Order By Total_Cost DESC;

-- ========================================================================================================
-- ========================================================================================================
-- Gross Profit

-- Yearly 

Select Year(ii.created_at) Yearly,
		Round (Sum(ii.Product_retail_price - ii.cost ),2) Profit
		FROM inventory_items ii
LEFT JOIN order_items oi ON ii.product_id = oi.product_id
where oi.status IN ('Shipped','Complete')
Group By Year(ii.created_at)
Order By Profit DESC ;

-- Product category Wise Yearly Gross Profit -- 

Select Year(ii.created_at) Yearly,
		Product_category,
		Round (Sum(ii.Product_retail_price - ii.cost ),2) Profit
		FROM inventory_items ii
LEFT JOIN order_items oi ON ii.product_id = oi.product_id
where oi.status IN ('Shipped','Complete')
Group By Year(ii.created_at),Product_category
Order By Profit DESC ;

	
-- Brand Wise Yearly Gross Profit -- 

Select Year(ii.created_at) Yearly,
		product_brand,
		Round (Sum(ii.Product_retail_price - ii.cost ),2) Profit
		FROM inventory_items ii
LEFT JOIN order_items oi ON ii.product_id = oi.product_id
where oi.status IN ('Shipped','Complete')
Group By Year(ii.created_at),product_brand
Order By Profit DESC ;



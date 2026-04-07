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


-- Who are our customers? --

Create View Customer_Ratio AS
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



-- What marketing channel are we doing well on? --


select 
	u.traffic_source,
	count(Distinct oi.user_id) as Total_Customer
	From order_items as oi
Left Join users as u
ON oi.user_id = u.id
where oi.status not in ('returned','Cancelled')
group by u.traffic_source
order By 2 Desc ;

-- Customer Returning Rate --

Create VIEW Cust_Returning_Rate AS
WITH ReturningCustomers AS (
  SELECT
    YEAR(created_at) AS order_year,
    user_id,
    COUNT(DISTINCT order_id) AS total_orders
  FROM orders
  WHERE
    status IN ('Complete', 'Shipped')
  GROUP BY  YEAR(created_at), user_id
  HAVING COUNT(DISTINCT order_id) > 1
    
), 
TotalCustomers AS (
  SELECT
    YEAR (created_at) AS order_year,
    COUNT(DISTINCT user_id) AS total_customers
  FROM orders 
  WHERE
    status IN ('Complete', 'Shipped')
  GROUP By YEAR (created_at)
)
SELECT
  rc.order_year,
  COUNT(DISTINCT rc.user_id) AS returning_customers,
  COUNT(DISTINCT rc.user_id) / tc.total_customers AS returning_customer_rate
FROM
  ReturningCustomers rc
JOIN
  TotalCustomers tc
ON
  rc.order_year = tc.order_year
GROUP BY
  rc.order_year, tc.total_customers;


Select * from Cust_Returning_Rate;
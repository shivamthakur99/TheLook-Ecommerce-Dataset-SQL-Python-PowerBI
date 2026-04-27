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


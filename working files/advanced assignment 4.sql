use northwind;
-- sales report per product
-- show 0 if they had no sales
-- should be values for each week company had sales
-- use outer joins
-- use ifnull function to provide zero values
-- hint - you will need to use a subquery for order data

select
	DATE_FORMAT(ord.order_date, '%Y - %m') as OrdDate,
    prod.product_code,
    prod.product_name,
    SUM(FORMAT((ord_det.quantity * prod.list_price),2)) as Sales
from products as prod
INNER JOIN order_details as ord_det
ON prod.id = ord_det.product_id
INNER JOIN orders as ord
ON ord_det.order_id = ord.id
group by ord.order_date, prod.product_code, prod.product_name
order by OrdDate asc
;

-- select 
-- 	DATE_FORMAT(orders.order_date, '%Y - %m') as OrdDate
--  from
-- order_details
-- cross join 
-- orders
-- on order_details.order_id = orders.id
-- inner join
-- products
-- on products.id = order_details.product_id
-- group by order_date, order_details.product_id
-- order by OrdDate asc
-- ;

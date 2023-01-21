use northwind;
-- Create report by year, by month, by item (order date)
select 	
		DATE_FORMAT(orders.order_date, "%Y - %m") as OrderDate,
        products.product_code as ProductCode,
        CONCAT('$', FORMAT(SUM(products.list_price * order_details.quantity),2)) as 'Sales',
        CONCAT('$', FORMAT(SUM(products.standard_cost * order_details.quantity),2)) as 'Cost',
        CONCAT('$', FORMAT(SUM((products.list_price - products.standard_cost) * order_details.quantity),2)) as 'Profit'
        from orders, order_details, order_details_status, products
WHERE orders.id = order_details.order_id AND order_details_status.id = order_details.status_id AND order_details.product_id = products.id AND order_details.status_id = 2
GROUP BY order_details.product_id, orders.order_date
ORDER BY OrderDate ASC, SUM((products.list_price - products.standard_cost) * order_details.quantity) DESC
;
-- show total sales, cost, and profit List Price * order quantity - standard cost * order quantity
-- Limit to order lines invoiced (join order_details)
-- Use equi-join syntax for table joins (done)


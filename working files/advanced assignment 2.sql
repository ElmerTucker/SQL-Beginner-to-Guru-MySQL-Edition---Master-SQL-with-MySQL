use northwind;
-- Create sales report by state
-- show total revenue - list price * order quantity
-- liimit to order lines invoiced

select ord.ship_state_province as State, date_format(order_date, "%M %Y") as OrderDate, SUM((prod.list_price - prod.standard_cost  )* ord_det.quantity) as 'Revenue'
from orders as ord
inner join
order_details as ord_det
on ord.id = ord_det.order_id
inner join
invoices as inv
on ord.id = inv.order_id
inner join
products as prod
on ord_det.product_id = prod.id
WHERE inv.invoice_date is not null
group by ord.ship_state_province, ord.order_date
order by OrderDate DESC;

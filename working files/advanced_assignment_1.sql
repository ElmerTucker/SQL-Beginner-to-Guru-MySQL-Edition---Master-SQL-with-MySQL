use northwind;

-- Create orders report with friendly column names, format numberts to have commas and limit decimals to two places
-- show customer firstname, last name
select 	cus.first_name as First, 
		cus.last_name as Last, 
        ship.company as Shipper, 
        DATE_FORMAT(ord.order_date, '%M, %e, %Y') as OrdDate, 
        CONCAT(ord.ship_address, " ", ord.ship_city, ", ", ord.ship_state_province, " ", ord.ship_zip_postal_code, ", ", ord.ship_country_region) as ShipAddr, 
        prod.product_code as Code, 
        prod.product_name as ProdName,
        Format(prod.list_price,2) as ListPrice,
        Format(ord_det.quantity, 0) as Quantity,
        Format((ord_det.quantity * prod.list_price),2) as LineCost
from customers as cus
JOIN
orders as ord
ON cus.id = ord.customer_id
JOIN 
shippers as ship
ON ord.shipper_id = ship.id
JOIN
order_details as ord_det
ON ord.id = ord_det.order_id
JOIN
products as prod
ON ord_det.product_id = prod.id
-- shipping company name - done!
-- order date, formatted as Full month, day, year - done!
-- shipping address (street, city, state, zip, country)
-- product code, product name, list price, quantity order, and total cost of line item
;
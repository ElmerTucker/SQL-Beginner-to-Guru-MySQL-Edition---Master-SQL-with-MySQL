use northwind;
-- create a view for order data
-- show employee name, customer name (employees, customers)
-- shipper name (shippers)
-- product code, product name, order status name, order detail status name (products, order_details)
-- show tax status name (tax_status_id)
-- select data from view
-- drop view
CREATE VIEW nw_ord AS
    SELECT 
        emp.first_name AS EmpFirstName,
        emp.last_name AS EmpLastName,
        cus.first_name AS CusFirstName,
        cus.last_name AS CusLastName,
        ship.company AS Shipper,
        prod.product_code AS ProdCode,
        prod.product_name AS ProdName,
        ord_stat.status_name AS OrderStatus,
        ord_det_stat.status_name AS OrderDetailStatus
    FROM
        orders AS ord
            INNER JOIN
        shippers AS ship ON ord.shipper_id = ship.id
            INNER JOIN
        customers AS cus ON ord.customer_id = cus.id
            INNER JOIN
        employees AS emp ON ord.employee_id = emp.id
            INNER JOIN
        order_details AS ord_det ON ord_det.order_id = ord.id
            INNER JOIN
        products AS prod ON prod.id = ord_det.product_id
            INNER JOIN
        order_details_status AS ord_det_stat ON ord_det_stat.id = ord_det.status_id
            INNER JOIN
        orders_status AS ord_stat ON ord_stat.id = ord.status_id
;


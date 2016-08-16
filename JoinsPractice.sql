--Get all customers and their addresses.
SELECT * FROM customers
JOIN addresses ON customer_id = customers.id;

--Get all orders and their line items.
SELECT * FROM orders
JOIN line_items ON order_id = orders.id;

--Which warehouses have cheetos?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_id
JOIN products ON product_id = products.id
WHERE products.description = 'cheetos';

--Which warehouses have diet pepsi?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_id
JOIN products ON product_id = products.id
WHERE products.description = 'diet pepsi';

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM customers
JOIN addresses ON customer_id = customers.id
JOIN orders ON address_id = addresses.id;
 
--How many customers do we have?
SELECT COUNT (*) FROM customers;

--How many products do we carry?
SELECT COUNT (*) FROM products;

--What is the total available on-hand quantity of diet pepsi?
SELECT SUM (warehouse_product.on_hand) FROM warehouse_product
WHERE product_id = 6;
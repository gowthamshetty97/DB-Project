--Inserting data in the Products table
INSERT INTO Products (product_ID, product_name, product_price) VALUES (4, 'Cheez Burger', 200);

--Updating name and address of the customer where id is 2
UPDATE Customer SET customer_name = 'Rohit', customer_address= 'Colombia' WHERE Customer_ID = 2;

--Deleting data from products table where id is 4
DELETE FROM products WHERE product_ID = 4;

--using Order by statement 
SELECT * FROM Products ORDER BY product_price Asc;

--using WHERE filtering
SELECT * FROM delivery WHERE delivery_ID = 3;

--using join statement for Order_ID and Customer_ID
SELECT Order.Order_ID, Customer.Customer_ID FROM `Order` INNER JOIN Customer ON Order.Customer_ID = Customer.Customer_ID;

--MIN Command for the quantity of product
SELECT MIN(quantity) AS minimum_quantity FROM `Order`;

--MAX Command for the greater price of the product 
SELECT MAX(product_price) AS Maximum_Price FROM Products;

--AVG Command for average payment
SELECT AVG(total_payment) FROM Payment;

--Command for COUNT statement
SELECT COUNT(Order_id) FROM `Order`;

--using alias AS for multi-table for combining the order_id and customer_id
SELECT O.Order_ID, P.total_payment, P.payment_ID FROM Payment AS P, `Order` AS O WHERE P.payment_id = 2 AND O.order_id = 2;


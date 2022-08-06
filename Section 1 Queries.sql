create database MG_FastFoods;
use MG_FastFoods;
show tables;
create table Products (product_id int not null, product_name varchar(255) not null, product_price bigint not null, PRIMARY KEY (product_id));
describe Products;
create table Customer (customer_id int not null, customer_name varchar(255), customer_email varchar(255), customer_address varchar(255), PRIMARY KEY (customer_id));
describe Customer; 
create table `Order` (order_id int not null, product_id int, customer_id int, quantity bigint, order_type varchar(255), PRIMARY KEY (order_id), FOREIGN KEY (product_id) REFERENCES Products(product_id), FOREIGN KEY (customer_id) REFERENCES Customer(customer_id));
describe `Order`;
create table Payment (payment_id int not null, order_id int, total_payment bigint, Date date, PRIMARY KEY (payment_id), FOREIGN KEY (order_id) REFERENCES `Order`(order_id));
describe Payment;
create table Delivery (delivery_id int not null, order_id int, delivery_address varchar(255), PRIMARY KEY (delivery_id), FOREIGN KEY (order_id) REFERENCES `order`(order_id));
describe Delivery;
show tables;
select * from Products;
LOAD DATA LOCAL INFILE "D:/Mahesh/Products.csv" INTO TABLE Products FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Products;

select * from Customer;
LOAD DATA LOCAL INFILE "D:/Mahesh/Customer.csv" INTO TABLE Customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Customers;

select * from `Order`;
LOAD DATA LOCAL INFILE "D:/Mahesh/Order.csv" INTO TABLE `Order` FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from `Order`;

select * from Payment;
LOAD DATA LOCAL INFILE "D:/Mahesh/Payment.csv" INTO TABLE Payment FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Payment;

select * from Delivery;
LOAD DATA LOCAL INFILE "D:/Mahesh/Delivery.csv" INTO TABLE Delivery FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
select * from Delivery;





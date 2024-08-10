CREATE DATABASE SHOP;
USE SHOP;

CREATE TABLE Customer (
	id INT PRIMARY KEY,
    name varchar(50),
    age INT NOT NULL
);

INSERT INTO Customer 
VALUES
(1, "AMAN" , 23),
(2, "ROHAN" , 28),
(3, "AKASH" , 25),
(4, "ANANT" , 29),
(5, "NITIN" , 27),
(6, "AJAY" , 24);

select * from Customer;

CREATE TABLE ORDERS (
	id INT PRIMARY KEY,
    name_of_product varchar(50),
    price INT NOT NULL
);

INSERT INTO Orders 
VALUES
(1, "Mobile" , 23000),
(2, "CHARGER" , 2800),
(3, "BACK_CASE" , 250),
(4, "AIR_PODS" , 2900),
(5, "NECK_BAND" , 2700),
(6, "AUX_CABLE" , 240),
(7, "ADAPTER" , 2000),
(8, "GLASS" , 2700),
(9, "INSURANCE" , 2900);

select * from Orders;

CREATE TABLE Address (
	id INT PRIMARY KEY,
    city varchar(50),
    pin_code INT NOT NULL
);

INSERT INTO Address 
VALUES
(1, "HUBLI" , 580002),
(2, "DHARWAD" , 580008),
(3, "BELGAVI" , 580009),
(4, "BIJAPUR" , 567748),
(5, "BAGALKOT" , 567774),
(6, "HAVERI" , 543336),
(7, "RANEBENNUR" , 547779),
(8, "GADAG" , 580004),
(9, "SIRSI" , 587965),
(10, "DANDELI" , 580007),
(11, "PANAJI" , 560009),
(12, "KITTUR" , 560003),
(13, "YELAPUR" , 580005);

select * from Address;


-- JOINS
-- INNER JOIN

SELECT customer.id, customer.name, orders.name_of_product, orders.price, address.city
FROM ((Customer
INNER JOIN Orders ON customer.id = orders.id)
inner join address ON customer.id = address.id);


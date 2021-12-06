CREATE DATABASE WEEK2

CREATE TABLE customers(
customerid int primary key,
firstname varchar(255),
lastname varchar(255),
city varchar(255),
state varchar(255),
);




SELECT * from items_ordered;
--SELECT GETDATE();
DROP TABLE customers

CREATE TABLE items_ordered(
id int IDENTITY primary key ,
customerid int FOREIGN KEY REFERENCES customers(customerid),
order_date date,
item varchar(255),
quantity int,
price float,
);


INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10101,'30-jun-1999','Raft',1,58.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10298,'1-jul-1999','Skateboard',1,33.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10101,'1-jul-1999','Life Vest',4,125.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10299,'06-jul-1999','Parachute',1,1250.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10339,'27-jul-1999','Umbrella',1,4.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10449,'01-sep-1999','Unicycle',1,180.79);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10439,'14-aug-1999','Ski Poles',2,25.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10101,'18-aug-1999','Rain Coat',1,18.30);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10449,'01-sep-1999','Snow Shoes',1,45.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10439,'18-sep-1999','Tent',1,88.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10298,'19-sep-1999','Lantern',2,29.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10410,'28-oct-1999','Sleeping Bag',1,89.22);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10438,'01-nov-1999','Umbrella',1,6.75);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10438,'02-nov-1999','Pillow',1,8.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'30-jun-1999','Pogo stick',1,28.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10410,'30-jan-2000','Unicycle',1,192.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10315,'2-feb-2000','Compass',1,8.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10449,'29-feb-2000','Flashlight',1,4.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10101,'08-mar-2000','Sleeping Bag',2,88.70);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10298,'18-mar-2000','Poket Knife',1,22.38);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10449,'19-mar-2000','Canoe Paddle',2,40.00);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10298,'01-apr-2000','Ear Muffs',1,12.50);
INSERT INTO items_ordered(customerid, order_date, item, quantity, price) VALUES(10330,'19-apr-2000','Shovel',1,16.75);




insert into customers (customerid, firstname, lastname, city, state) 
values
(10101, 'John', 'Gray', 'Lynden', 'Washington'),
(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona'),
(10410, 'Mary Ann', 'Howell', 'Charleston', 'South Carolina'),
(10413, 'Donald', 'Davids', 'Gila Bend', 'Arizona'),
(10419, 'Linda', 'Sakahara', 'Nogales', 'Arizona'),
(10429, 'Sarah', 'Graham', 'Greensboro', 'North Carolina'),
(10438, 'Kevin', 'Smith', 'Durango', 'Colorado'),
(10439, 'Conrad', 'Giles', 'Telluride', 'Colorado'),
(10449, 'Isabela', 'Moore', 'Yuma', 'Arizona');
DROP DATABASE WEEK2
SELECT * from customers;
DROP TABLE items_ordered;
//cau 1
Select customerid, item, price 
from items_ordered
where customerid = 10449;

//cau 2
Select item
from items_ordered
where item ='Tent';

//cau 3
select customerid, order_date, item from items_ordered
where item LIKE 'S%';

// cau 4
select DISTINCT * from items_ordered;

//cau 5
Select MAX(price) from items_ordered;

//cau 6
Select AVG(price)
from items_ordered
where MONTH(order_date) = 12;

//cau 7

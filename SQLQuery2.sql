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


insert into items_ordered (customerid, order_date, item, quantity, price) values
(10330, '1999-06-30', 'Pogo stick', 1, 28.00),
(10101, '1999-06-30', 'Raft', 1, 58.00),
(10298, '1999-07-01', 'Skateboard', 1, 33.00),
(10101, '1999-07-01', 'Life Vest', 4, 125.00),
(10299, '1999-07-06', 'Parachute', 1, 1250.00),
(10339, '1999-07-27', 'Umbrella', 1, 4.50),
(10449, '1999-09-13', 'Unicycle', 1, 180.79),
(10439, '1999-08-14', 'Ski Poles', 2, 25.50),
(10101, '1999-08-18', 'Rain Coat', 1, 18.30),
(10449, '1999-09-01', 'Snow Shoes', 1, 45.00),
(10439, '1999-09-18', 'Tent', 1, 88.00),
(10298, '1999-09-19', 'Lantern', 2, 29.00),
(10410, '1999-10-28', 'Sleeping Bag', 1, 89.22),
(10438, '1999-11-01', 'Umbrella', 1, 6.75),
(10438, '1999-11-02' ,'Pillow', 1, 8.50),
(10298, '1999-12-01', 'Helmet', 1, 22.00),
(10449, '1999-12-15', 'Bicycle', 1, 380.50),
(10449, '1999-12-22', 'Bicycle', 1, 280.00),
(10101, '1999-12-30', 'Hoola Hoop', 3, 14.75),
(10330, '2000-01-01', 'Flashlight', 4, 28.00),
(10101, '2000-01-02', 'Lantern', 1, 16.00),
(10299, '2000-01-18', 'Inflatable Mattress', 1, 38.00),
(10438, '2000-01-18', 'Tent', 1, 79.99),
(10413, '2000-01-19', 'Lawnchair', 4, 32.00),
(10410, '2000-01-30', 'Unicicle', 1, 192.50),
(10315, '2000-02-02', 'Compass', 1, 8.00),
(10449, '2000-02-29', 'Flashlight', 1, 4.50),
(10101, '2000-02-08', 'Sleeping Bag', 2, 88.70),
(10298, '2000-03-18', 'Poket Knife', 1, 22.38),
(10449, '2000-03-19', 'Canoe Paddle', 2, 40.00),
(10298, '2000-04-01', 'Ear Muffs', 1, 12.50),
(10330, '2000-04-19', 'Shovel', 1, 16.75);




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


--bài tập của Vi.HD
--Câu 1: Hiển thị customerid, item, price từ bảng items_ordered với điều kiện customerid = 10449

SELECT customerid, item, price FROM items_ordered
WHERE customerid = 10449;

--Câu 5: Hiển thị price từ bảng items_ordered với điều kiện price có giá trị lớn nhất

SELECT MAX(price)
FROM items_ordered;

--Câu 6: Hiển thị price từ bảng items_ordered với điều kiện price có giá trị trung bình ở tháng 12

SELECT AVG(price) as trung_binh
FROM items_ordered
WHERE order_date LIKE '%12%';

SELECT fistname, city, state
FROM 
--Bài Tập phần của Đức.TT
--cau 2 lấy tất cả các trường có truong bảng items_ordered rồi điều kiện là item = tent

SELECT *
from items_ordered
where item = 'tent';

--cau 11 đếm số đơn hàng mà mỗi khách đã đặt, với number_of_ordered là tổng số đặt hàng và Total là tổng Quantity sau đó group by theo customerid
SELECT customerid, COUNT(item) AS munber_of_ordered , 
SUM(quantity)AS ToTal
from items_ordered
GROUP BY customerid;



--cau 8 lấy giá thấp nhất của tent bằng MIN()
SELECT MIN(price) from items_ordered
where item ='tent';



--cau 15 hiện tên khách hàng và city nhưng sắp xếp theo thứ tự tăng dần bằng lastname
SELECT firstname, lastname, city from customers
order by lastname ;




--Phần bài tập của Quân.NĐ
--câu 12 Hiển thị người trong bảng state và đưa ra state có số lượng người lớn hơn 1

SELECT state, COUNT(customerid) AS songuoi
from customers
group by state
having COUNT(customerid) > 1;


--câu 16 Hiển thị item được mua từ  customerid 10449 và price theo thứ tự giảm dần

SELECT customerid, item, price from items_ordered
where customerid = 10449
order by price DESC, customerid ASC;


--câu 17 Hiển thị các trường item có price > 10.00 và price tăng dần

SELECT item, price from items_ordered 
where price > 10.00 
order by price ASC;


--câu 18 Hiển thị customerid, order_date, item nếu cột item không có mặt hàng Snow shoes và Ear muffs.
-- ở đây em dùng AND thay OR.
--Vì khi dùng OR thì một trong hai mặt hàng có giá trị true thì mọi mặt hàng sẽ được hiển thị

SELECT customerid, order_date, item from items_ordered
where (item <> 'Snow shoes') AND (item <> 'Ear muffs');



--câu 19 Hiển thị các cột item bắt đầu bằng chữ cái 'S', 'P', 'F' và price 

SELECT item, price
from items_ordered
where (item LIKE 'S%') OR (item LIKE 'P%') OR (item LIKE 'F%');


-- Đây là phần của Chien.NQ làm
-- Câu 7:
select count(*) as "Tong so hang" /* Hiển thị và đếm số hàng */
from items_ordered;               /* Trong bảng items_ordered */

-- câu 9:

select state, count(state) as "so nguoi" /* Hiển thị state và đếm số người trong state */
from customers                           /* Từ bảng customers */
group by state;                          /* Nhóm theo state (những state giống nhau sẽ hiện thị 1 lần) */


-- Câu 13:
select item, max(price) as "Gia tri toi da", min(price) as "Gia tri toi thieu"
/* Hiên thị item, giá trị tối đa và tối thiểu của price */
from items_ordered  /* từ bảng items_ordrrd*/
group by item       /* Nhóm theo item (Những item giống nhau sẽ hiển thị 1 lần) */
having max(price) > 190; /* Điều kiện giá trị tối đa của price > 190 */

--Bài tập của KHOI.TC
--Câu 10 từ bảng item_ordered chọn item, giá tới đa và giá tới thiểu cho từng mặt hàng trong bảng
--Ở đây ta chon trường item và sử dụng max(price) min(price) là giá tới đa và giá tới thiểu 
--và as trường maximum price , minimum price rồi from từ bảng items_ordered
--ta dùng câu lệnh group by để nhóm các mặt hàng thành bảng riêng biệt
select item, max(price) as 'maximum price' , min(price) as 'minimum price' 
from items_ordered
group by item;

--câu 20
--Chọn ngày, mục và giá từ bảng items_ordered cho tất cả các hàng có giá trị trong khoảng từ 10,00 đến 80,00.
--Ta chọn trường order_date, item, price với câu lệnh select từ bảng items_ordered
--Sau đó ta dùng where trích xuất với điều kiện trường price nằm trong khoảng 10,00 đến 80,00
select order_date, item, price
from items_ordered
where price between 10.00 and 80.00;

--câu 21
--Chọn tên, thành phố và tiểu bang từ bảng khách hàng cho tất cả các hàng có giá trị tiểu bang là: Arizona, Washington, Oklahoma, Colorado hoặc Hawaii
--Chọn trường firstname, city, state từ bảng customers
--ta sử dụng where kết hợp với or để tìm các tiểu bang Arizona, Washington, Oklahoma, Colorado hoặc Hawaii trong trường state
select firstname, city, state 
from customers
where state = 'Arizona' or state = 'Washington' or state = 'Oklahoma'
or state = 'Colorado' or state = 'Hawaii';



--Câu 3: Chọn các giá trị của dòng sản phẩm, ngày đặt hàng và giá trị mặt hàng từ bảng items_ordered cho bất kỳ mặt hàng nào trong cột mặt hàng bắt đầu bằng chữ "S".
SELECT * FROM  items_ordered --Truy xuất d liệu từ bảng items_ordered
WHERE item like 'S%'; --tại cột item ta cho điều kiện là bất kỳ mặt hàng nào bắt đầu bằng chữ "S" thì được truy xuất ra màn hình

--Câu 4:Chọn các mục riêng biệt trong bảng items_ordered. Nói cách khác, hiển thị danh sách từng mục duy nhất từ ​​bảng items_ordered.
SELECT DISTINCT * from items_ordered; --Sử dụng DISTINCT để truy xuất từng mục không bị trùng lặp ra màn hình

/*Câu 14:Mỗi khách hàng đã thực hiện bao nhiêu đơn hàng? Sử dụng bảng items_ordered. Chọn danh sách bảo quản, số lượng đơn đặt hàng họ 
đã thực hiện và tổng số đơn đặt hàng nếu họ mua nhiều hơn 1 mặt hàng.*/
SELECT customerid, COUNT(item) AS number_of_ordered, --Chọn dữ liệu từ Customerid, điếm số lượng đơn đặt hàng đã thực hiện 
SUM(quantity)AS ToTal from items_ordered --tính tổng số đơn đặt hàng 
GROUP BY customerid --nhóm các dữ liệu
having count(quantity) > 1; --tổng hợp các dữ liệu từ nhóm, ta đặt điều kiện số đơn hàng > 1 thì đucợ truy xuất ra màn hình
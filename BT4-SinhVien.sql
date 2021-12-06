create database BT4
go
use BT4
go
create table SinhVien
(
	Id			int identity(1,1) primary key,
	Fullname	nvarchar(50),
	Born		datetime,
	[Address]	nvarchar(50),
	Email		nvarchar(50),
	Sex			bit,
)
---- Select * from SinhVien
--- Drop table SinhVien
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 16/10/2000, N'Quảng Ngãi', N'do@gmail.com', 1)
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 1/1/2010, N'Đà Nẵng', N'do@gmail.com', 0)
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 15/7/1990, N'Quảng Ngãi', N'do@gmail.com', 1)
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 5/5/2000, N'Đà Nẵng', N'do@gmail.com', 0)
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 7/7/2007, N'Đà Nẵng', N'do@gmail.com', 1)
insert into SinhVien(FullName, Born, Address, Email, Sex) values (N'Trần Công Đô', 16/10/1999, N'Quảng Ngãi', N'do@gmail.com', 0)
create database BTVN2
go
use BTVN2
go
create table GiaoVien
(
	Id					int identity(1,1) primary key,
	FullName			nvarchar(50),
	Born				datetime,
	DateStartWork		datetime,
	[Address]			nvarchar(50),
	Email				nvarchar(50),
	Sex					bit,
	PhongBan			nvarchar(50),
	[Password]			nvarchar(50),
	Repassword			nvarchar(50)
)
--- Drop table GiaoVien
--- select * from GiaoVien
insert into GiaoVien (FullName, Born, DateStartWork, Address, Email, Sex, PhongBan, Password, Repassword) 
values (N'AAAA', 7/10/1999, 1/1/2020, N'Quảng Ngãi', N'A@gmail.com', 1, N'IT', N'123', N'123')
insert into GiaoVien (FullName, Born, DateStartWork, Address, Email, Sex, PhongBan, Password, Repassword) 
values (N'BBBB', 7/10/1999, 1/1/2020, N'Đà Nẵng', N'B@gmail.com', 0, N'Language', N'123', N'123')
insert into GiaoVien (FullName, Born, DateStartWork, Address, Email, Sex, PhongBan, Password, Repassword) 
values (N'CCC', 7/10/1999, 1/1/2020, N'Hà Nội', N'C@gmail.com', 0, N'IT', N'123', N'123')
insert into GiaoVien (FullName, Born, DateStartWork, Address, Email, Sex, PhongBan, Password, Repassword) 
values (N'DDD', 7/10/1999, 1/1/2020, N'Tokyo', N'D@gmail.com', 0, N'Music', N'123', N'123')
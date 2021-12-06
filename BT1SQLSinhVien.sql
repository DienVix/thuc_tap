create database BT1
go
use BT1
go
create table SinhVien
(
	Id				int identity(1,1) primary key,
	[Name]			nvarchar(50),
	[Address]		nvarchar(50),
	Number_lover	int,
	Born			int,
	Sex				bit
)
insert into SinhVien(Name,Address,Number_lover,Born,Sex) values (N'Trần Công Đô',N'Quảng Ngãi',1,2000,1)
insert into SinhVien(Name,Address,Number_lover,Born,Sex) values (N'Trần Công Đô',N'Đà Nẵng',4,2002,1)
insert into SinhVien(Name,Address,Number_lover,Born,Sex) values (N'Trần Công Đô',N'Quảng Ngãi',2,2003,0)
insert into SinhVien(Name,Address,Number_lover,Born,Sex) values (N'Trần Công Đô',N'Đà Nẵng',1,2005,0)
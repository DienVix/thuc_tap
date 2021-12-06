create database BT3
go
use BT3
go
create table SinhVien
(
	Id			int identity(1,1) primary key,
	Username	nvarchar(20),
	Phone		varchar(20),
	Email		nvarchar(50),
	[Password]	nvarchar(50),
	Repassword	nvarchar(50),
	Born		date,
)
----		Select * from SinhVien
----		Drop table SinhVien

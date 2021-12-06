create database BT2
go
use BT2
go
create table Xe
(
	Id				int identity(1,1) primary key,
	TenXe			nvarchar(30),
	HangXe			nvarchar(30),
	NgaySanXuat		datetime,
	NgayBanXe		datetime,
	ChuXe			nvarchar(30),
	SoGhe			int
)
--- select * from Xe
---	drop table xe
insert into Xe(TenXe,HangXe, NgaySanXuat, NgayBanXe, ChuXe, SoGhe) values (N'AUDI',N'Toyota',16/11/2010,01/01/2020,'N Đô', 4)

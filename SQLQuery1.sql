create database Shop
go
use Shop
go
--drop table Users
create table Users
(
	Id			uniqueidentifier primary key,
	[UserName]  nvarchar(100),

	CreatedOn	datetimeoffset,
	CreaedBy	nvarchar(100),
	UpdatedOn	datetimeoffset,
	UpdatedBy	nvarchar(100),
	IsActive    bit
)
--select*from Users
insert into Users(Id,[UserName], CreatedOn, CreaedBy, IsActive)
values (NEWID(),'admin', SYSDATETIMEOFFSET(), 'do', 1)
go

create table Userss
(
	Id			uniqueidentifier primary key,
	[UserName]  nvarchar(100),
	[password]	varchar(20),

	CreatedOn	datetimeoffset,
	CreaedBy	nvarchar(100),
	UpdatedOn	datetimeoffset,
	UpdatedBy	nvarchar(100),
	IsActive    bit
)
--select*from Users

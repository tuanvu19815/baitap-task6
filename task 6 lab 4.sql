create database RiverPlate
go

create table Student(
StudentNo int primary key,
StudentName varchar(50),
StudentAddress varchar(100),
PhoneNo int
)
go

create table Department(
DeptNo int primary key,
DeptName varchar(50),
ManagerName char(30)
)
go

create index IX_Dept on Department(DeptNo, DeptName, ManagerName)
drop database Aptech
go
create database Aptech
go 

create table Classes(
ClassName char(6),
Teacher varchar(30),
TimeSlot varchar(30),
Class int,
Lab int
)
go

create unique clustered index MyClusteredIndex on Classes(ClassName)
with (pad_index = on, FillFactor = 70, Ignore_Dup_Key = on)
go

create nonclustered index TeacherIndex on Classes(Teacher)
drop index Classes.TeacherIndex

drop index Classes.MyClusteredIndex 
go

create unique clustered index MyClusteredIndex on Classes(ClassName)
WITH (DROP_EXISTING, ALLOW_ROW_LOCKS,
ALLOW_PAGE_LOCKS = ON, MAXDOP = 2)

go
create index ClassLabIndex on Classes(Class, Lab)

select * from Classes
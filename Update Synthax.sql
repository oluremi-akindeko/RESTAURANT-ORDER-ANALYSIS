select * from customers
create table customers 
	(Name varchar,
	 ID int,
	 Age int)
insert into customers values
	('Remy Moses',
	100,
	25)
alter table customers
add column gender char (1)

insert into customers (gender) 
values ('M')
update customers
set gender = 'M'
insert into customers values
	('Faith Ebitse', 101,30),
	('Ademodi Oyin', 102, 26)
update customers
set gender = 'F'
where id = 102

delete from customers
where id is null
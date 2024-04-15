create database mydb;

use mydb;

create table emp(id int, name varchar(20), addrs varchar(20), desig varchar(20), salary int);

show databases;

show tables;

describe emp;

desc emp;

drop table emp;

drop database mydb;

truncate table emp;

create table emp(id int, name varchar(20), addrs varchar(20), dept varchar(20), salary int);

alter table emp add dept varchar(20);

alter table emp add email varchar(20);

/*SQL Constraints*/

use batch7293;
create table customer(
id int NOT NULL,
name varchar(20),
age int,
city varchar(20));

/*Alternative sql conde to add contraint
create table customer(
id int ,
name varchar(20),
age int,
city varchar(20),
NOT NULL(id)
);
*/
alter table customer modify column age int NOT NULL;

desc customer;

drop table customer;

/*Alternative sql conde to add contraint*/

create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
unique (id)
);

create table customer(
id int NOT NULL unique,
name varchar(20),
age int,
city varchar(20)
);
 
create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
constraint custId unique(id)
);

/*alternative*/
create table customer(
id int primary key,
name varchar(20),
age int NOT NULL,
city varchar(20)
);

create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
constraint pk_cust primary key(id)
);

/** alter table to add primary contraint**/
alter table customer modify column age int unique;

alter table customer modify column name varchar(20) primary key;

drop table customer;

create table customer(
id int,
name varchar(20),
age int check(age>18),
city varchar(20),
constraint pk_cust primary key(id)
);

insert into customer values(1,'sakashi',30,'mumbai');

create table customer(
id int primary key,
name varchar(20),
age int check(age>18),
city varchar(20) default 'mumbai'
);

desc customer;

insert into customer values(1,'sakashi',30,'mumbai');

insert into customer values(2,'amruta',18,'amravati');

create table orders
(OrderId int NOT NULL primary key,
orderNumber int NOT NULL ,
custid int,
constraint FK_CustomerID foreign key(custid)
references customer(id));

desc orders;

drop table orders;
drop table customer;

/*******************************************************/
create table customer(
id int primary key,
name varchar(20),
age int,
city varchar(20),
sal int
);

INSERT INTO customer VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),
(2, 'Khilan', 25, 'Delhi', 1500.00 ),
(3, 'Kaushik', 23, 'Kota', 2000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),
(5, 'Hardik', 27, 'Bhopal', 8500.00 ),
(6, 'Komal', 22, 'Hyderabad', 4500.00 ),
(7, 'Muffy', 24, 'Indore', 10000.00 );

create table ordertbl(
orderID int primary key,
date varchar(20) not null,
cust_id int not null,
amount int
);

INSERT INTO ordertbl VALUES 
(102, '2009-10-08 00:00:00', 3, 3000.00),
(100, '2009-10-08 00:00:00', 3, 1500.00),
(101, '2009-11-20 00:00:00', 2, 1560.00),
(103, '2008-05-20 00:00:00', 4, 2060.00);

select * from ordertbl;

/*id name age = customer
amt=ordertble*/

select id, name, age, amount
from customer
join ordertbl
on customer.id = ordertbl.cust_id;

select id, name, age, amount
from customer
left join ordertbl
on customer.id = ordertbl.cust_id;

select id, name, age, amount
from customer
right join ordertbl
on customer.id = ordertbl.cust_id;

select id, name, age, amount
from customer
full join ordertbl
on customer.id = ordertbl.cust_id;
create database salerdb;

use salerdb;

create table salertbl(
ord_no int primary key,
purch_amt int not null,
ord_date varchar(20) not null,
customer_id int not null,
salesman_id int not null
);

drop table salertbl;

select* from salertbl;

INSERT INTO salertbl VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760 , '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

select sum(purch_amt) from salertbl;

select avg(purch_amt) from salertbl;

select count(salesman_id) from salertbl;

select max(purch_amt) from salertbl;

select customer_id, ord_date, max(purch_amt)  from salertbl group by customer_id, ord_date;

select salesman_id, max(purch_amt) FROM salertbl where ord_date='2012-08-17' group by salesman_id;

select customer_id, ord_date, max(purch_amt)  from salertbl group by customer_id, ord_date having max(purch_amt)>2000.00;

select customer_id, ord_date, max(purch_amt)  from salertbl group by customer_id, ord_date having max(purch_amt) between 2000 and 6000;
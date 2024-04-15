/*
/SQL Constraints/

/*
SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. 
This ensures the accuracy and reliability of the data in the table.
 If there is any violation between the constraint and the data action, 
 the action is aborted.

Constraints can be column level or table level.
 Column level constraints apply to a column, 
 and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly

*/

use batch7293;

create table customer(
id int NOT NULL,
name varchar(20),
age int,
city varchar(20));

/*Alternative sql code to add constraint
create table customer(
id int,
name varchar(20),
age int,
city varchar(20),
NOT NULL(id)
);

/*create table customer(
id int NOT NULL,
name varchar(20),
age int NOT NULL,
city varchar(20));*/

alter table customer 
modify column age int NOT NULL;

desc customer;
/*
SQL UNIQUE Constraint
The UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee
 for uniqueness for a column or set of columns.*/

create table customer(
id int Unique,
name varchar(20),
age int NOT NULL,
city varchar(20));

desc customer;

drop table customer;
/*Alternative*/
create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
unique (id)
);

/alternative/
create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
constraint custID unique(id)
);
drop table customer;
/*try for alter table ad unique constraint*/

create table customer(
id int primary key,
name varchar(20),
age int NOT NULL,
city varchar(20)
);
desc customer;

create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
primary key(id)
);

create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
constraint custID unique(id)
);

create table customer(
id int,
name varchar(20),
age int NOT NULL,
city varchar(20),
constraint pk_cust primary key(id)
);

/*alter table to add primary constarint*/

/*SQL FOREIGN KEY Constraint*/

/*
/*
SQL CHECK Constraint
The CHECK constraint is used to limit the value range that can be placed in a column.

If you define a CHECK constraint on a column it will allow only 
certain values for this column.

If you define a CHECK constraint on a table it can limit the values in
 certain 
columns based on values in other columns in the row.

drop table customer;

create table customer(
id int primary key,
name varchar(20),
age int check(age>18),
city varchar(20)
);
desc customer;

insert into customer values(1,'padmaja',30,'Mumbai');

create table customer(
id int primary key,
name varchar(20),
age int check(age>18),
city varchar(20) default 'Mumbai'
);

insert into customer values(1,'padmaja',30,'Pune');
insert into customer values(2,'padmaja',30, null);
insert into customer values(3,'padmaja',30, '');
select * from customer;
*/



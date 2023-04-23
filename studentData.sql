create database myForm;
create table details(
id int unique, 
name varchar(20),
age int,
weight double
);

select * from details;
insert into details values (6,'shiva',22,50);
insert into details values (2,'sanket',24,62);
insert into details values (3,'annesh',23,68);
insert into details values (4,'rakesh',25,60);

select distinct name from details;
select distinct id from details;
select distinct age from details;
select distinct weight from details;



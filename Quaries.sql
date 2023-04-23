-- CREATING THE NEW DATA BASE
create database database_name;

-- using the created database
use database_name;

-- create new table 
create table table_name(
sNo int,
name varchar(20),
salery int
);

-- inserting values inside the table
insert into table_name (sNo,name,salery) 
values(1,'sanket',90000),
	  (2,'kumar',36000),
	  (3,'sudeep',55000),
	  (4,'tublite',60000),
	  (5,'kyarmal',23000);
      
-- to see all data with respective table
select * from table_name;


-- Create a new database
CREATE DATABASE employe_Database;

-- Switch to the newly created database
USE employe_Database;

-- Create a new table
CREATE TABLE empTable (
  employeNo INT,
  employeName VARCHAR(30),
  job VARCHAR(30),
  manager INT UNIQUE,
  hiredate DATE,
  salary DOUBLE,
  commission DOUBLE,
  departmentNo INT
);

-- Insert some values into the table
INSERT INTO empTable (employeNo, employeName, job, manager, hiredate, salary, commission, departmentNo)
VALUES 
  (1, 'sanket', 'developer', NULL, '2020-01-01', 50000.00, NULL, 1),
  (2, 'shridher', 'Salesperson', 1, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'kiran', 'designer', 6, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'vishal', 'manager', 33, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'dinesh', 'developer', 15, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'kaavya', 'suporter', 2, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'harish', 'networkAnalist', 8, '2020-02-01', 30000.00, 5000.00, 1),
  (2, 'nihal', 'testEngineer', 3, '2020-02-01', 30000.00, 5000.00, 1);
-- 1.Select all rows from the table
SELECT * FROM empTable;

-- adding new details 
INSERT INTO empTable (employeNo, employeName, job, manager, hiredate, salary, commission, departmentNo)
VALUES
  (9, 'akhilesh', 'Salesperson', 46, '2023-04-23', 35000.00, 5000.00, 2),
  (10, 'dipikapadkone', 'Developer', 47, '2022-03-01', 55000.00, NULL, 2),
  (11, 'jemsgosling', 'Designer', 64, '2022-02-10', 42000.00, 3000.00, 3),
  (12, 'alanwalker', 'Marketing Manager', 91, '2022-04-01', 65000.00, 5000.00, 4),
  (13, 'annemariya', 'Network Engineer', 98, '2022-02-15', 45000.00, 2000.00, 5);

-- 2.display employeName and salery whos salery is gratter then or equal to 2200
select employeName,salary from empTable where salary >= 22000;

-- 3.Write a query to display details of employs who are not getting commission?
select employeName from empTable where commission is null;

-- 4.Write a query to display employee name and salary of those employees who don’t have
-- their salary in range of 2500 to 4000?
select employeName,salary from empTable where salary not between 200 and 25000;


-- 5.Write a query to display the name, job title and salary of employees who don’t have manager?
select employeName,job,salary from empTable where manager is null;

-- 6.Write a query to display the name of employee whose name contains “A” as third alphabet?
select employeName from empTable where substring(employeName, 3, 1) = 'n';

-- 7.rite a query to display the name of employee whose name contains “T” as last alphabet?
select employeName from empTable where right(employeName, 1) = 't'; 


-- 8.Write a query to display the name of employee whose name contains ”M” as First and
-- as third alphabet?
select employeName from empTable where substring(employeName, 1, 3) = 'm';

-- 9.Write a query to display details of employs with the text “Not given”, if  is null?
select * from empTable where commission is null;
CREATE DATABASE Station;

use station;

CREATE TABLE serviceStation(
sr_No int auto_increment primary key ,
serviceType varchar(400)
);

DROP TABLE servicestation;
SELECT * FROM servicestation;
INSERT INTO servicestation VALUES(1,'Oil Change');
INSERT INTO servicestation VALUES(2,'Tire rotation and balancing');
INSERT INTO servicestation VALUES(3,'Brake pad replacement');
INSERT INTO servicestation VALUES(4,'Wheel alignment');
INSERT INTO servicestation VALUES(5,'Transmission fluid change');
INSERT INTO servicestation VALUES(6,'Air filter replacement');
INSERT INTO servicestation VALUES(7,'Spark plug replacement');
INSERT INTO servicestation VALUES(8,'Battery replacement');
INSERT INTO servicestation VALUES(9,'Suspension repair or replacement');
INSERT INTO servicestation VALUES(10,'Fuel system cleaning');

CREATE TABLE customerRecords(
srNo int primary key,
carBrand varchar(100),
customerName varchar(100),
carIssue varchar(100),
receivedDate date,
returnedDate date,
maintenanceDays int,
mechanicName varchar(100),
mechanicPhone varchar(100),
cost double,
serviceTypeId int,
foreign key(serviceTypeId) references servicestation(sr_No)
);

DROP TABLE customerrecords;

SELECT * FROM customerrecords;
-- insert 30 records in customerRecords for 3 diffrent months (10 for each month)
INSERT INTO customerrecords values(1, 'Honda', 'John Smith', 'Brake pad replacement', '2023-01-05', '2023-01-06', 1, 'Bob Johnson', '555-4321', 200.00, 2);
INSERT INTO customerrecords values(2, 'Toyota', 'Amy Lee', 'Oil change', '2023-01-07', '2023-01-07', 1, 'Tom Wilson', '555-8765', 50.00, 2);
INSERT INTO customerrecords values(3, 'Ford', 'Mike Davis', 'Tire rotation', '2023-01-10', '2023-01-10', 1, 'Samantha Brown', '555-1111', 80.00, 3);
INSERT INTO customerrecords values(4, 'Chevrolet', 'Emily Lee', 'Wheel alignment', '2023-01-11', '2023-01-11', 1, 'Tom Wilson', '555-8765', 100.00, 4);
INSERT INTO customerrecords values(5, 'Nissan', 'Sarah Johnson', 'Transmission fluid change', '2023-01-15', '2023-01-15', 1, 'Bob Johnson', '555-4321', 250.00, 5);
INSERT INTO customerrecords values(6, 'Honda', 'David Smith', 'Brake pad replacement', '2023-01-17', '2023-01-17', 1, 'Samantha Brown', '555-1111', 180.00, 6);
INSERT INTO customerrecords values(7, 'Toyota', 'Jessica Lee', 'Oil change', '2023-01-20', '2023-01-20', 1, 'Bob Johnson', '555-4321', 55.00, 7);
INSERT INTO customerrecords values(8, 'Ford', 'Andrew Davis', 'Tire rotation', '2023-01-23', '2023-01-23', 1, 'Tom Wilson', '555-8765', 90.00, 8);
INSERT INTO customerrecords values(9, 'Chevrolet', 'Karen Lee', 'Wheel alignment', '2023-01-24', '2023-01-24', 1, 'Samantha Brown', '555-1111', 110.00, 9);
INSERT INTO customerrecords values(10, 'Nissan', 'Ryan Johnson', 'Transmission fluid change', '2023-01-30', '2023-01-30', 1, 'Bob Johnson', '555-4321', 280.00, 10);
INSERT INTO customerrecords values(11, 'Toyota', 'John Smith', 'Brake pad replacement', '2023-02-05', '2023-02-06', 1, 'Bob Johnson', '555-4321', 200.00, 1);
INSERT INTO customerrecords values(12, 'Honda', 'Amy Lee', 'Oil change', '2023-02-07', '2023-02-07', 1, 'Tom Wilson', '555-8765', 50.00, 2);
INSERT INTO customerrecords values(13, 'Chevrolet', 'Mike Davis', 'Tire rotation', '2023-02-10', '2023-02-10', 1, 'Samantha Brown', '555-1111', 80.00, 3);
INSERT INTO customerrecords values(14, 'Toyota', 'Emily Lee', 'Brake pad replacement', '2023-02-11', '2023-02-11', 1, 'Tom Wilson', '555-8765', 200.00, 4);
INSERT INTO customerrecords values(15, 'Nissan', 'Sarah Johnson', 'Oil change', '2023-02-15', '2023-02-15', 1, 'Bob Johnson', '555-4321', 55.00, 5);
INSERT INTO customerrecords values(16, 'Ford', 'David Smith', 'Tire rotation', '2023-02-20', '2023-02-20', 1, 'Samantha Brown', '555-1111', 90.00, 6);
INSERT INTO customerrecords values(17, 'Chevrolet', 'Jessica Lee', 'Wheel alignment', '2023-02-22', '2023-02-22', 1, 'Tom Wilson', '555-8765', 110.00, 7);
INSERT INTO customerrecords values(18, 'Honda', 'Andrew Davis', 'Transmission fluid change', '2023-02-25', '2023-02-25', 1, 'Bob Johnson', '555-4321', 250.00, 8);
INSERT INTO customerrecords values(19, 'Toyota', 'Karen Lee', 'Brake pad replacement', '2023-02-28', '2023-02-28', 1, 'Bob Johnson', '555-4321', 200.00, 9);
INSERT INTO customerrecords values(20, 'Ford', 'Ryan Johnson', 'Oil change', '2023-02-28', '2023-02-28', 1, 'Tom Wilson', '555-8765', 50.00, 10);
INSERT INTO customerrecords values(21, 'Chevrolet', 'John Smith', 'Tire rotation', '2023-03-28', '2023-03-28', 1, 'Samantha Brown', '555-1111', 80.00, 1);
INSERT INTO customerrecords values(22, 'Nissan', 'Amy Lee', 'Wheel alignment', '2023-03-28', '2023-03-28', 1, 'Tom Wilson', '555-8765', 100.00, 2);
INSERT INTO customerrecords values(23, 'Honda', 'Mike Davis', 'Transmission fluid change', '2023-03-28', '2023-03-28', 1, 'Bob Johnson', '555-4321', 250.00, 3);
INSERT INTO customerrecords values(24, 'Toyota', 'Rajesh Kumar', 'Engine issue', '2023-03-01', '2023-03-05', 4, 'Amit Sharma', '9876543210', 5000.00, 4);
INSERT INTO customerrecords values(25, 'Maruti', 'Smita Patel', 'Brake problem', '2023-03-02', '2023-03-04', 2, 'Ravi Gupta', '9876543211', 2500.00, 5);
INSERT INTO customerrecords values(26, 'Hyundai', 'Manoj Singh', 'AC not working', '2023-03-05', '2023-03-08', 3, 'Amit Sharma', '9876543210', 3000.00, 6);
INSERT INTO customerrecords values(27, 'Honda', 'Anjali Sharma', 'Battery dead', '2023-03-08', '2023-03-10', 2, 'Ravi Gupta', '9876543211', 2000.00, 7);
INSERT INTO customerrecords values(28, 'Toyota', 'Vikas Gupta', 'Suspension issue', '2023-03-10', '2023-03-13', 3, 'Amit Sharma', '9876543210', 4000.00, 8);
INSERT INTO customerrecords values(29, 'Maruti', 'Ankit Patel', 'Engine overheating', '2023-03-12', '2023-03-15', 3, 'Ravi Gupta', '9876543211', 3500.00, 9);
INSERT INTO customerrecords values(30, 'Hyundai', 'Nisha Singh', 'Gear problem', '2023-03-14', '2023-03-18', 4, 'Amit Sharma', '9876543210', 4500.00, 10);
INSERT INTO customerrecords values(31, 'Honda', 'Rahul Sharma', 'AC not cooling', '2023-04-17', '2023-04-20', 3, 'Ravi Gupta', '9876543211', 3000.00, 1);
INSERT INTO customerrecords values(32, 'Toyota', 'Riya Gupta', 'Engine misfiring', '2023-04-20', '2023-03-23', 3, 'Amit Sharma', '9876543210', 4000.00, 2);
INSERT INTO customerrecords values(33, 'Maruti', 'Arvind Patel', 'Clutch problem', '2023-04-22', '2023-04-25', 3, 'Ravi Gupta', '9876543211', 3500.00, 3);


-- join both tables
SELECT * FROM customerrecords right JOIN servicestation on serviceTypeId=sr_No;
-- fetch top 1 record from customerRecords & increase its cost by 1000rs
UPDATE customerRecords SET cost = cost + 1000 WHERE srNo = 1;   
-- count all records                 	
SELECT count(srNo) FROM customerrecords;										

-- find total cost in each month & for 3 months
SELECT sum(cost) FROM customerrecords WHERE srNo between 1 and 10;
SELECT sum(cost) FROM customerrecords WHERE srNo between 11 and 20;
SELECT sum(cost) FROM customerrecords WHERE srNo between 21 and 33;
SELECT sum(cost) FROM customerrecords WHERE srNo between 1 and 33;

-- find average cost in each month & for 3 months
SELECT avg(cost) FROM customerrecords WHERE srNo>=1 and srNo<=10;
SELECT avg(cost) FROM customerrecords WHERE srNo>=11 and srNo<=20;
SELECT avg(cost) FROM customerrecords WHERE srNo>=21 and srNo<=33;
SELECT avg(cost) FROM customerrecords WHERE srNo>=1 and srNo<=33;

-- find customers whose name starts with a
SELECT customerName FROM customerrecords WHERE customerName LIKE 'a%';
-- find mechanic who worked most.		
SELECT mechanicName FROM customerrecords WHERE maintenanceDays>=4; 		

-- find lowest & highest cost from 3 months 
SELECT min(cost) FROM customerrecords;
SELECT max(cost) FROM customerrecords;



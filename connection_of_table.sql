create database connectionDatabase;
use connectionDatabase;

create table courseTable(
srNo int not null,
courseName varchar(20),
facultyName varchar(20),
primary key(sNo)
);

select * from students;
insert into students values(1, 'rakesh' ,15);
insert into students values(3, 'anita' ,23);



create table students(
srNo_pk int not null,
studentName varchar(20),
facultyCode_fk int,
primary key(srNo),
foreign key(facultyCode_fk) reference courseTable(srNo) 
);

select studentName,facultyName left join courseTable on facultyCode_fk=srNo;

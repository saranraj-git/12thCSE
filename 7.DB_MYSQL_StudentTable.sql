--Creating Table - Student
Create table Student(Reg_No char(5), Sname varchar(20), Age integer(2), Dept varchar(10), Class char(3));

-- View table structure:
desc Student;

-- Inserting Data into table:
Insert into Student values ('M1001', 'Harish', 19, 'ME', 'ME1');
Insert into Student values ('M1002', 'Akash', 20, 'ME', 'ME2');
Insert into Student values ('C1001', 'Sneha', 20, 'CSE', 'CS1');
Insert into Student values ('C1002', 'Lithya', 19, 'CSE', 'CS2');
Insert into Student values ('E1001', 'Ravi', 20, 'ECE', 'EC1');
Insert into Student values ('E1002', 'Leena', 21, 'EEE', 'EE1');
Insert into Student values ('E1003', 'Rose', 20, 'ECE', 'EC2');

--View all records:
select * from Student;


--List the students whose department is “CSE”:
Select * from Student where Dept='CSE';

--List all the students of age 20 and more in ME department:
Select * from Student where Age >=20 and Dept='ME';

--List the students department wise:
Select * from Student Group by Dept Order by Sname;

-- Modify the class M2 to M1:
Update Student set Class='ME1' where Class='ME2';

--Check for the uniqueness of Register no.
Select Distinct Reg_No from Student;




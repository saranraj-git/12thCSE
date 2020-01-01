-- Creating Table Employee
Create table Employee (Empno integer(4) primary key, Empname varchar(20), Desig varchar(10), Dept varchar(10), Age integer(2), Place varchar(10));

-- View Table Structure
Desc Employee;

-- Inserting Data into Table:
Insert into employee values(1221, 'Sidharth', 'Officer', 'Accounts', 45, 'Salem');
Insert into employee values(1222, 'Naveen', 'Manager', 'Admin', 32, 'Erode');
Insert into employee values(1223, 'Ramesh', 'Clerk', 'Accounts', 33, 'Ambathur');
Insert into employee values(1224, 'Abinaya', 'Manager', 'Admin', 28, 'Anna Nagar');
Insert into employee values(1225, 'Rahul', 'Officer', 'Accounts', 31, 'Anna Nagar');

-- Select all the record in the employee table
select * from Employee;

-- Adding two more records:
Insert into employee values(3226, 'Sona', 'Manager', 'Accounts', 42, 'Erode');
Insert into employee values(3227, 'Rekha', 'Officer', 'Admin', 34, 'Salem');

-- Adding one more Field:
Alter table employee add(doj date);

-- Inserting date of joining to each employee:
update employee set doj = '2010-03-20' where empno=1221;
update employee set doj = '13-05-2012' where empno=1222;
update employee set doj = '25-10-2017' where empno=1223;
update employee set doj = '17-06-2018' where empno=1224;
update employee set doj = '02-01-2018' where empno=1225;
update employee set doj = '31-12-2017' where empno=3226;
update employee set doj = '16-08-2015' where empno=3227;
select * from Employee;

-- Checking null value in doj
select * from emp where empno is null;


-- List the employees who joined after 2018/01/01.
Select * from emp where doj > '01-01-2018';
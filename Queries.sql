/* database creation */
CREATE DATABASE employeeDB;

/* using database */
use employeeDB;

/* table creation	*/
CREATE TABLE employee (
  empId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstName varchar(24) ,
  lastName varchar(24) ,
  age int(3),
  gender varchar(6) ,
  salary int(8),
) 

/* show table schema	*/
desc employee;

/* show all tables in current database	*/
show tables;

/* insert data	*/
INSERT INTO employee VALUES (101,'Omkar','B',25,'M',33000,);
INSERT INTO employee VALUES (102,'Amit','C',26,'M',32000);
INSERT INTO employee VALUES (103,'Sam','S',24,'M',23000);
INSERT INTO employee VALUES (104,'Riya','K',27,'F',35000);
INSERT INTO employee VALUES (105,'Nita','A',29,'F',40000);
INSERT INTO employee VALUES (106,'Divya','J',28,'F',27000);

/* show table data	*/
select * from employee;

/* using conditions and other parameters	*/
select * from employee where salary>33000;
select * from employee where salary<35000 ORDER BY empId Desc;
select * from employee where firstName LIKE '%a';	  /* ending with a

/* Update table	*/
UPDATE employee SET salary=25000 WHERE empId=103;

/* Alter table - add/modify/remove column	*/
ALTER TABLE employee ADD empLocation varchar(8) DEFAULT 'India';
ALTER TABLE employee MODIFY empLocation varchar(16);
ALTER TABLE employee DROP COLUMN empLocation ;

/* Delete row */
DELETE FROM employee where empId=105;

/* Delete entire rows/data , keeps schema*/
TRUNCATE TABLE employee;

/* Delete entire table - rows/data + schema*/
DROP TABLE employee;

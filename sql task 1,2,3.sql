#Task 1
use parthadb;
create table students(
student_id int,
student_name varchar(50),
department varchar(50),
marks int,
city varchar(50)
);
insert into students
values 
(1,"partha","sql",78,"kolkata"),
(1,"megha","sql",90,"delhi"),
(1,"soumi","sql",89,"mumbai"),
(1,"arpan","sql",70,"kolkata"),
(1,"priya","sql",95,"noida");
#display all records
select * from students;
#select specific columns
select student_name,marks
from students;
#using allias 
select
	student_name as name ,
    marks as score
    from students;
    
    
#Task 2
select * from students;
#1.where clause
select * 
from students
where marks > 89;
#2comparisson operator
select student_name, marks
from students
where marks >= 78;
#3.order by & ascending order 
select student_name, marks
from students
order by marks asc;
#descending order
select student_name, marks
from students
order by marks desc;
#4.aggregate funtions
#count()
select count(*)
as total_students
from students;
#sum()
select sum(marks)
as total_marks
from students;
#avg()
select avg(marks)
as avg_marks
from students;
#min()
select min(marks)
as minimum_marks
from students;
#max
select max(marks)
as maximum_marks
from students;

#Task 3
create table employees (
    emp_id int,
    name varchar(50),
    department varchar(50),
    salary int
);

insert into employees values
(101, 'rahul', 'it', 50000),
(102, 'priya', 'it', 60000),
(103, 'amit', 'hr', 45000),
(104, 'sneha', 'hr', 55000),
(105, 'rohan', 'finance', 70000),
(106, 'anjali', 'finance', 65000),
(107, 'raj', 'it', 55000);
select * from employees;
#1.group by with sum()
select department, sum(salary)
as total_salary 
from employees
group by  department;
#2.group by with count()
select department, count(*)
as employee_count 
from employees
group by  department;
#3.group by avg
select department, avg(salary)
as avg_salary 
from employees
group by  department;
#4 having clause
select department, avg(salary)
as avg_salary
from employees
group by department
having avg(salary)>50000;





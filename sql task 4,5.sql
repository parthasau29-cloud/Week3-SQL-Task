create database joins;
use joins;
create table departments (
    department_id int primary key,
    department_name varchar(50)
);

create table employees (
    employee_id int primary key,
    employee_name varchar(50),
    department_id int,
    salary int
);
insert into departments values
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');

insert into employees values
(1, 'Rahul', 101, 50000),
(2, 'Priya', 102, 45000),
(3, 'Amit', 101, 55000),
(4, 'Sneha', 103, 48000),
(5, 'Rohit', 105, 40000);

#1.inner join
select e.employee_id,
e.employee_name,
d.department_name,
e.salary
from employees e
inner join departments d
on e.department_id = d.department_id;

#.2left join

select 
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary
from employees e
left join departments d
on e.department_id = d.department_id;

#3

select 
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary
from employees e
right join departments d
on e.department_id = d.department_id;

#task 5

#1. find employee earning more than the avg sa;ary

select *
from employees
where salary > (select avg(salary)
				from employees);

#2. find employees eranings   the highesrt salary 

select * 
from employees 
where salary = (
	select max(salary)
    from employees);
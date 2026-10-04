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
    from students


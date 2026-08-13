#Database:
create database college;
use college;

#Student Table:
create table students(
student_id int primary key,
name varchar(50),
age int,
city varchar(50),
marks int,
course varchar(30)
);

#Data insert:
insert into students values
(1,'Sakshi',21,'Pune',85,'AI'),
(2,'Priya',22,'Sambhajinagar',79,'AI'),
(3,'Sneha',20,'Kannad',80,'AI'),
(4,'Rahul',21,'Nashik',65,'AI'),
(5,'Amit',23,'Pune',95,'AI'),
(6,'Pooja',22,'Kannad',72,'AI');

select*from students;

select name, marks
from students;

#Marks greter than 80 Students:
select*
from students
where marks>80;

#In Pune City Students:
select
*from students
where city='Pune';

#Marks Descending order:
select*
from students
order by marks desc;

#Marks Ascending Order:
select*
from students
order by marks asc;

#Highest marks:
select max(marks)as higest_marks
from students;

#Average marks:
select avg(marks)as average_marks
from students;

#In every course how many students are there:
select course, count(*)as total_students
from students
group by course;

#IN range 70 to 90 marks students:
select*
from students
where marks between 70 and 90;

#In city Pune and Kannad:
select*
from students
where city in ('Pune','Kannad');

#start the name by 'S':
select*
from students
where name like 'S%';

#Update the marks:
update students
set marks=90
where student_id=2;

select*from students;

#delete the Student:
delete from students
where student_id=6;

select*from students;

#Add the new column:
alter table students
add email varchar(100);

select*from students;

#How many records in table:
select count(*)as total_students
from students;

#create new table:
create table Departments(
dep_id int primary key,
dep_name varchar(50)
);

#Join practice:
create table courses(
course_if int primary key,
course_name varchar(50),
fees int);

insert into courses values
(1,'BCA',50000),
(2,'MCA',45000),
(3,'Bcom',40000);

select students.name, students.course, courses.fees
from students
join courses
on students.course=courses.course_name;

#Second highest marks in students table:
select max(marks)as second_higest_marks
from students
where marks<(select max(marks)from students);

#lowest marks student:
select min(marks)as lowest_marks
from students;

#How many students in very city:
select city, count(*)as total_students
from students
group by city;

#greter than 80 marks students names:
select name
from students
where marks>80;

#All Students:
select*from students;

#Name,city and marks show:
select name,city,marks
from students;

#Greter than 75 marks students:
select name,marks from students
where marks>75;

#less than 80 marks students:
select name,marks from students
where marks<80;

#how many students in Ai course:
select count(*)as totsl_students
from students
where course='Ai';

#Sort by age:
select*
from students
order by age desc;

#name start by 'A':
select name
from students
where name like 'A%';












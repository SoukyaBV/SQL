create table Normalize_1NF(
employee_id int,
employee_name varchar(100),
employee_phone varchar(200)
)

insert into Normalize_1NF
values(1,'Soukya','123456'),
(2,'Spoorthy','567893')

select * from Normalize_1NF

--Not NF2--
create table NF2(
student_id int,
student_name varchar(200),
subject_id int,
subject_name varchar(200)
)

insert into NF2
values(1,'Soukya',100,'Physics'),
(2,'Spoorthy',105,'Maths'),
(3,'Sanvi',107,'Physics'),
(4,'Deepa',110,'Computer Science'),
(5,'Samiksha',115,'Chemistry')

select * from NF2

--NF2
create table NF2_example
(
student_id int,
student_name varchar(200),
subject_id int
)

create table NF2_Subject
(
subject_id int,
subject_name varchar(200)
)

insert into NF2_example
values(1,'Soukya',100),
(2,'Spoorthy',105),
(3,'Sanvi',107),
(4,'Deepa',110),
(5,'Samiksha',115)

insert into NF2_Subject
values(100,'Physics'),
(105,'Maths'),
(107,'Physics'),
(110,'Computer Science'),
(115,'Chemistry')

select * from NF2_example
select * from NF2_Subject

--NF3--
create table Not_NF3(
student_id int,
student_name varchar(200),
student_state varchar(200),
student_country varchar(200),
student_age int
)

insert into Not_NF3
values(1,'Soukya','Karnataka','India',20),
(2,'Spoorthy','Andra Pradesh','India',20),
(3,'Sanvi','UP','India',20),
(4,'Deepa','Delhi','India',20)

select * from Not_NF3

create table example_NF3
(
student_id int,
student_name varchar(200),
student_age int,
student_state varchar(200)
)

create table example1_NF3(
student_state varchar(200),
student_country varchar(200)
)

insert into example_NF3
values(1,'Soukya',20,'Karnataka'),
(2,'Spoorthy',20,'Andra Pradesh'),
(3,'Sanvi',20,'UP'),
(4,'Deepa',20,'Delhi')

insert into example1_NF3
values('Karnataka','India'),
('Andra Pradesh','India'),
('UP','India'),
('Delhi','India')

select * from example_NF3
select * from example1_NF3
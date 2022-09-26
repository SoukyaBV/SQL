--Create Parent Table
create table department(
dept_id int primary key,
dept_name varchar(200),
dept_manager varchar(200)
)

--Insert to Parent Table
insert into department 
values(1,'Developer','Ram'),
(2,'Testing','Shyam'),
(3,'Finance','Deepa'),
(4,'HR','Anjali')

--Create Child Table
create table employee(
emp_id int primary key,
emp_name varchar(200) not null,
emp_dept_id int foreign key references department(dept_id),
emp_number int unique,
emp_email varchar(200) default 'abc@gmail.com',
emp_age int check (emp_age>=18)
)


--insert to child table
insert into employee
values(100,'Soukya B V',1,234567,'sou@gmail.com',20),
(101,'Spoorthy',2,567867,'spoorthy@gmail.com',22),
(102,'Shwetha',3,89765,'Shwetha@gmail.com',24)


select * from department 
select * from employee



--try deleting one row in parent table
delete from department where dept_name = 'testing'

--on delete cascade

alter table employee drop constraint FK__employee__emp_de__6E01572D

alter table employee add constraint FK__employee__emp_de__6E01572D foreign key (emp_dept_id)
references department(dept_id) on delete cascade

delete from department where dept_name = 'testing'

select * from department 
select * from employee

--on update cascade
insert into department 
values(5,'IT','Shiv')

select * from department 
select * from employee

alter table employee drop constraint FK__employee__emp_de__6E01572D

alter table employee add constraint FK__employee__emp_de__6E01572D foreign key (emp_dept_id)
references department(dept_id) on update cascade

update department set dept_id = 2 where dept_name = 'Trainee'
update department set dept_id = 3 where dept_name = 'Developer'

select * from department 
select * from employee

--on delete/update cascade

alter table employee drop constraint FK__employee__emp_de__6E01572D

alter table employee add constraint FK__employee__emp_de__6E01572D foreign key (emp_dept_id)
references department(dept_id) on delete cascade on update cascade

--either delete or update or both can be used
delete from department where dept_id=5;

select * from department 
select * from employee

---On delete/ Update set null----
alter table employee drop constraint FK__employee__emp_de__6E01572D

alter table employee add constraint FK__employee__emp_de__6E01572D foreign key (emp_dept_id)
references department(dept_id) on delete set NULL on update set null

delete from department where dept_name = 'HR'
update department set dept_id = 4 where dept_manager = 'Ram'

select * from department 
select * from employee

--on delete/update set default

drop table department 
drop table employee 

create table department(
dept_id int primary key,
dept_name varchar(200),
dept_manager varchar(200)
)

--Insert to Parent Table
insert into department 
values(1,'Developer','Ram'),
(2,'Testing','Shyam'),
(3,'Finance','Deepa'),
(4,'HR','Anjali')

--Create Child Table
create table employee(
emp_id int primary key,
emp_name varchar(200) not null,
emp_dept_id int default 1 foreign key references department(dept_id) on delete set default on update set default,
emp_number int unique,
emp_email varchar(200) default 'abc@gmail.com',
emp_age int check (emp_age>=18)
)


--insert to child table
insert into employee
values(100,'Soukya B V',1,234567,'sou@gmail.com',20),
(101,'Spoorthy',2,567867,'spoorthy@gmail.com',22),
(102,'Shwetha',3,89765,'Shwetha@gmail.com',24)

select * from department 
select * from employee

delete from department where dept_name = 'Finance'
update department set dept_id = 5 where dept_name = 'Testing'
insert into customer5(cust_id,cust_name,cust_mob,cust_country)
values(1,'John','123456','India'),(2,'Merry','345678','US'),(3,'Raj','34567','London'),(4,'Ram','678900','UK')


insert into order5
values(101,1,'02-03-2022'),(101,1,'02-03-2022'),(102,2,'04-12-2022'),(102,2,'12-03-2022'),(103,3,'12-05-2022'),
(103,3,'11-03-2022'),(104,4,'08-06-2022'),(104,4,'08-06-2022'),(105,05,'10-01-2022')

SELECT * from customer5
SELECT * from order5

--Inner join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,ord.order_id,ord.cust_id,ord.order_date from customer5 as cust 
inner join order5 as ord on cust.cust_id = ord.cust_id

--Left join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,ord.order_id,ord.cust_id,ord.order_date from customer5 as cust 
left join order5 as ord on cust.cust_id = ord.cust_id

--Right JOIN 
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,ord.order_id,ord.cust_id,ord.order_date from customer5 as cust 
Right join order5 as ord on cust.cust_id = ord.cust_id

--Cross Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,ord.order_id,ord.cust_id,ord.order_date from customer5 as cust 
Cross join order5 as ord


--Full Join
SELECT * from customer5
SELECT * from order5
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,ord.order_id,ord.cust_id from customer5 as cust 
Full join order5 as ord on cust.cust_id = ord.cust_id

create view v1
as
select *from customer5 as cust 
inner join order5 as ord on cust.cust_id = ord.cust_id

CREATE table employee_100(
id int,
name varchar(100),
zipcode varchar(15)
);


create table Adress100(
zip_code varchar(15),
city varchar(200),
country varchar(200)
);

insert into  employee_100
values(1,'Soukya','123'),(2,'Spoorthy','234'),(3,'Sinchana','678'),(4,'Shwetha','789')

insert into Adress100
values('123','Bangalore','India'),('234','MP','India'),('678','Tamilnadu','India'),('567','Shimoga','India')

select * from employee_100
select * from Adress100

--Inner Join
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
inner join Adress100 as Ad on emp.zipcode = Ad.zip_code

--Left JOIN 
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
Left join Adress100 as Ad on emp.zipcode = Ad.zip_code

--Right JOIN 
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
Right join Adress100 as Ad on emp.zipcode = Ad.zip_code

--Full JOIN 
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
Full join Adress100 as Ad on emp.zipcode = Ad.zip_code

--Cross JOIN 
select * from employee_100
select * from Adress100
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
Cross join Adress100 as Ad

--Create View
create view v1 as
select emp.id,emp.name,emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
inner join Adress100 as Ad on emp.zipcode = Ad.zip_code

select * from v1
select city from v1

--Update View
alter view v1 as
select emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
inner join Adress100 as Ad on emp.zipcode = Ad.zip_code

alter view v1 as
select emp.zipcode,Ad.zip_code,Ad.city,Ad.country from employee_100 as emp  
Left join Adress100 as Ad on emp.zipcode = Ad.zip_code

--Insert View 

create view v2 as
select * from customer5 c 

select * from v2

insert into v2 
values(10,'Shyam',56789,'Australia')

select * from v2
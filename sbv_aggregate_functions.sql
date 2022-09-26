select * from S_HREMPLOYEES sh 

select sum(salary) from S_HREMPLOYEES sh 
select avg(salary) from S_HREMPLOYEES sh2 
select min(salary) from S_HREMPLOYEES sh3 
select max(salary) from S_HREMPLOYEES sh4 
select count(manager_id) from S_HREMPLOYEES sh5

select * from S_HREMPLOYEES sh 
select MANAGER_ID,max(salary) from S_HREMPLOYEES sh2 group by manager_id 
select manager_id,max(salary) from S_HREMPLOYEES sh3 group by MANAGER_ID having MANAGER_ID =100
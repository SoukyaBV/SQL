select * from S_HREMPLOYEES sh 


select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Rank() over (partition by DEPARTMENT_ID order by salary) as rank,
salary from S_HREMPLOYEES sh 

select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Dense_Rank() over (partition by DEPARTMENT_ID order by salary) as denserank,
salary from S_HREMPLOYEES sh 

select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Rank() over (order by salary) as rank,
salary from S_HREMPLOYEES sh 

select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Dense_Rank() over (order by salary) as denserank,
salary from S_HREMPLOYEES sh 

select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Row_number() over (partition by DEPARTMENT_ID order by salary) as rownumber,
salary from S_HREMPLOYEES sh 

select EMPLOYEE_ID,FIRST_NAME,DEPARTMENT_ID,Row_number() over (order by salary) as rownumber,
salary from S_HREMPLOYEES sh
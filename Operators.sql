SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID = 105
SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID >= 105
SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID <= 105
SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID != 100
SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID <> 105
SELECT * FROM S_HREMPLOYEES sh WHERE MANAGER_ID = 102 OR MANAGER_ID = 120
SELECT * FROM S_HREMPLOYEES sh WHERE MANAGER_ID = 102 AND MANAGER_ID = 120
 
SELECT * FROM S_HREMPLOYEES sh WHERE SALARY BETWEEN 6000 AND 15000
SELECT * FROM S_HREMPLOYEES sh WHERE FIRST_NAME LIKE 'S%' AND LAST_NAME LIKE '%S'
SELECT * FROM S_HREMPLOYEES sh WHERE FIRST_NAME NOT LIKE '%S%'
SELECT * FROM S_HREMPLOYEES sh WHERE MANAGER_ID IS NULL
SELECT * FROM S_HREMPLOYEES sh WHERE EMAIL IS NOT NULL
SELECT * FROM S_HREMPLOYEES sh WHERE EMPLOYEE_ID IN (106,107,108)
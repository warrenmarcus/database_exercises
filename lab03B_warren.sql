-- lab03-B

-- Warren Green

SET linesize 132
SET pagesize 50

SPOOL lab03Boutput_warren.txt

-- part 1
SELECT department_ID, employee_ID, first_name, last_name, hire_date,
   (SYSDATE-hire_date)/365 years_service
	FROM HR.employees
	WHERE (SYSDATE-hire_date)/365 >= 15
	ORDER BY department_ID, employee_ID;
-- part 2
SELECT department_ID, employee_ID, first_name, last_name, hire_date, 
   (SYSDATE-hire_date)/365 years_service
	FROM HR.employees
	WHERE (SYSDATE-hire_date)/365 >=15 AND department_ID IN (100, 110)
	ORDER BY department_ID, employee_ID;
-- part 3
SELECT employee_ID, first_name, last_name, hire_date, 
    (SYSDATE-hire_date)/365 years_service
	FROM HR.employees
	WHERE hire_date >= TO_DATE('01-01-2008', 'DD-MM-YYYY')
	ORDER BY years_service ASC;

-- part 4
SELECT employee_ID, first_name, last_name, salary, hire_date,
    (SYSDATE-hire_date)/365 years_service
	FROM HR.employees
	WHERE salary < 10000 AND (SYSDATE-hire_date)/365 > 15
	ORDER BY last_name, first_name;

-- part 5
SELECT COUNT(employee_ID), MIN(salary), MAX(salary)
	FROM HR.employees;

-- part 6
SELECT DISTINCT job_id
	FROM HR.employees
	ORDER BY job_id;

-- part 7
SELECT first_name
	FROM HR.employees
	WHERE first_name LIKE 'D______%';

-- part 8
SELECT UPPER(last_name),UPPER (first_name), job_ID
	FROM HR.employees
	WHERE job_ID like 'IT%';

-- part 9
SELECT DISTINCT salary
	FROM HR.employees
	WHERE salary >= 10000
	ORDER BY salary;

-- part 10
COLUMN "YEARS_SERVICE" FORMAT 99
SELECT employee_ID, start_date, end_date, job_id, department_id,
    (end_date-start_date)/365 years_service
	FROM HR.job_history
	ORDER BY employee_id, start_date;




SPOOL off

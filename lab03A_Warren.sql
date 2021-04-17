-- lab03-A
-- Warren Green

SET linesize 3200
SET pagesize 3200


SPOOL lab03Aoutput_warren.txt


SELECT employee_ID, first_name, last_name
	FROM HR.employees
	WHERE employee_ID = 130;

SELECT employee_ID, first_name, last_name
	FROM HR.employees
	WHERE department_id = 90;

SELECT employee_ID, first_name, last_name, department_id
	FROM HR.employees
	WHERE department_id  BETWEEN 50 AND 150;

SELECT employee_ID, first_name, last_name, department_id
	FROM HR.employees
	WHERE department_id IN (50, 70, 90);

SELECT employee_ID, first_name, last_name
	FROM HR.employees
	WHERE first_name LIKE '%Da%';

SELECT employee_ID, first_name, last_name, department_id, job_id, salary
	FROM HR.employees
	WHERE job_id = 'IT_PROG' AND salary >= 5000;

SELECT employee_ID, first_name, last_name, department_id, job_id, salary
	FROM HR.employees
	WHERE salary >= 10000 OR job_id LIKE 'MGR';

SELECT employee_ID, first_name, last_name 
	FROM HR.employees
	WHERE first_name NOT LIKE '%Da%';

SELECT employee_ID, first_name, last_name, job_id, salary
	FROM HR.employees
	WHERE job_id = 'IT_PROG' OR job_id = 'AD_PRES' AND salary > 10000;

SELECT employee_ID, first_name, last_name, job_id, salary
	FROM HR.employees
	WHERE (job_id = 'IT_PROG' OR job_id = 'AD_PRES') AND salary > 10000;

SELECT employee_ID, department_id, first_name, last_name
	FROM HR.employees
	ORDER BY department_id;

SELECT employee_ID, department_id, first_name, last_name, salary*12 Annual
	FROM HR.employees
	ORDER BY department_id, Annual DESC;

SELECT employee_ID, department_id, first_name, last_name
	FROM HR.employees
	ORDER BY department_id, first_name, last_name;



SPOOL off



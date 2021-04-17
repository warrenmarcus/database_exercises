-- Lab: lab 02-B
-- Warren Green
-- Set linesize 100
SET linesize 100
-- output queries result to text file
SPOOL lab02Boutput_warren.text

-- SQL statements

SELECT table_name
	FROM all_tables
	WHERE owner = 'HR';

DESC HR.all_tables;

DESC HR.regions;
DESC HR.locations;
DESC HR.departments;
DESC HR.jobs;
DESC HR.employees;
DESC HR.job_history;
DESC HR.countries;

SELECT job_id, job_title, max_salary, min_salary, max_salary-min_salary AS "difference"
	FROM HR.jobs;

SELECT employee_id, last_name || ', ' || first_name AS "Full Name" , hire_date,(SYSDATE-hire_date)/365 AS "YEARS EMPLOYED", salary
	FROM HR.employees;

SELECT COUNT (employee_id)
	FROM HR.employees;

SELECT DISTINCT salary
	FROM HR.employees;

SELECT COUNT (DISTINCT salary)
	FROM HR.employees;


spool off

--lab : lab02-a
-- Name: Warren Green
--set 75 cahracters per line

SET lineisze 75

-- output queries result to text file

SPOOL lab02aOutput_warren.txt

-- you will enter all SQL statements you have successfully practiced here


-- lists available tables from HR user
SELECT table_name
	FROM all_tables
	WHERE owner = 'HR';

-- Find available tables from HR user
SELECT table_name
	FROM all_tables
	WHERE owner ='HR';

-- Describe attributes of jobs table
DESC HR.jobs;

-- lists all columns
SELECT *
	FROM HR.jobs;

-- list specific columns
SELECT job_id, job_title
	FROM HR.jobs;

-- Column alias of separeate words, special characters, lower case: use double quote
SELECT job_title, min_salary*1.2 "120% Minimum Salary"
	FROM HR.jobs;

-- Lists only unique minimum salaries
SELECT DISTINCT min_salary
	FROM HR.jobs;

-- stop sending output to file
SPOOL off




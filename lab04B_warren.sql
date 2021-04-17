-- lab04B
-- Warren Green
-- 006314031

SET linesize 132
SET pagesize 50

SPOOL lab04Boutput_warren.txt

-- part 1
SELECT TO_CHAR(SYSDATE,'DAY DD MON, YYYY') DATE 
	FROM DUAL;

-- part 2
SELECT employee_ID, last_name, first_name, commission_pct
	FROM HR.employees
	WHERE commission_pct is NOT NULL
	ORDER BY commission_pct;

-- part 3
SELECT employee_ID, last_name, first_name, TO_CHAR(salary, '$9,999,999.0')salary, TO_CHAR(ROUND(salary*1.15, 0), '$9,999,999.00') New_Salary
	FROM HR.employees
	WHERE salary >= 10000
	ORDER BY employee_ID;

-- part 4
SELECT INITCAP(last_name)last_name, LENGTH(last_name) length
	FROM HR.employees
	WHERE last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name LIKE 'M%'
	ORDER BY last_name;

-- part 5
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date), 0) MONTHS_WORKED
	FROM HR.employees
	WHERE job_id LIKE '%MGR%' OR job_id LIKE '%MAN%'
	ORDER BY (MONTHS_BETWEEN(SYSDATE, hire_date));

-- part 6 
SELECT last_name, LPAD (salary,15,'$') SALARY
	FROM HR.employees
	WHERE job_id = 'IT_PROG' AND salary >= 3000
	ORDER BY salary;

-- part 7
SELECT last_name, first_name, NVL2(commission_pct, TO_CHAR(salary*commission_pct,'L9,999,999.00'), 'NO BONUS') BONUS
	FROM HR.employees
	WHERE department_id = 80 OR department_id = 90
	ORDER BY last_name, first_name;

-- part 8
SELECT last_name, first_name, job_ID,
	DECODE (job_ID,
	   'AD_PRES', 'A',
	   'ST_MAN', 'B',
	   'IT_PROG', 'C',
	   'SA_REP', 'D',
	   'ST_CLERK', 'E',
	     'N/A') GRADE
	FROM HR.employees
	WHERE salary >=10000
	ORDER BY GRADE;


-- part 9
SELECT last_name, first_name,
	CASE 
	   WHEN commission_pct IS NULL THEN 'NO BONUS'
	   ELSE TO_CHAR(salary*commission_pct, 'L9,999,999.00')
	END BONUS
	FROM HR.employees
	WHERE department_id = 80 OR department_id = 90
	ORDER BY last_name, first_name;

























spool off

 -- Lab 04
-- Warren Green
-- 006314031

SET linesize 100

SPOOL lab04Aoutput_warren.txt



SELECT employee_ID, first_name, last_name, salary
	FROM HR.employees
	WHERE UPPER(first_name) ='DAVID';

SELECT LOWER('SQL Course')
	FROM DUAL;

SELECT LENGTH('Sqlplus')
	FROM DUAL;

SELECT INSTR('Sqlplus', 'l', 3,2)
	FROM DUAL;

SELECT LPAD(24000, 10, '*')
	FROM DUAL;

SELECT RPAD(24000, 10, '*')
	FROM DUAL;

SELECT TRIM('L' FROM 'Loyal')
	FROM DUAL;

SELECT REPLACE('Hello home', 'h', 'H')
	FROM DUAL;

SELECT ROUND(45.936,2)
	FROM DUAL;

SELECT TRUNC(45.936, 2)
	FROM DUAL;

SELECT MOD(5,3)
	FROM DUAL;

SELECT employee_ID, first_name, last_name,
    SYSDATE-hire_date AS Days_Hired
	FROM HR.employees
	WHERE job_id = 'IT_PROG';

SELECT employee_ID, first_name, last_name,
	ROUND(MONTHS_BETWEEN (SYSDATE, Hire_date))
	AS Months_Hired
	FROM HR.employees
	WHERE job_id = 'IT_PROG';

SELECT ADD_MONTHS('11-JAN-96',6)
	FROM DUAL;

SELECT NEXT_DAY('01-SEP-95', 'FRIDAY')
	FROM DUAL;

SELECT LAST_DAY('01-FEB-95')
	FROM DUAL;

SELECT ROUND(SYSDATE, 'MONTH')
	FROM DUAL;

SELECT TRUNC(SYSDATE, 'YEAR')
	FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'DAY DD MON, YYYY')
	FROM DUAL;

SELECT first_name, last_name, TO_CHAR(salary, 'L9,999,999.00')
	FROM HR.employees
	WHERE UPPER(first_name) = 'DAVID';

SELECT employee_ID, first_name, last_name,
	ROUND(MONTHS_BETWEEN (SYSDATE, hire_date), 0) AS Months_Hired
	FROM HR.employees
	WHERE job_id = 'IT_PROG';

SELECT first_name,last_name, salary, commission_pct, 
    NVL2(commission_pct, salary*commission_pct, salary*0.1) bonus
	FROM HR.employees;

SELECT first_name, last_name, salary, commission_pct,
	COALESCE(salary*commission_pct, salary*0.1) bonus
	FROM HR.employees;

SELECT first_name, last_name, salary,
    CASE job_id
	WHEN 'IT_PROG' THEN salary*0.25
	WHEN 'ST_CLERK' THEN salary*0.3
	ELSE salary*0.1
    END Bonus
	FROM HR.employees;

SELECT first_name, last_name, salary,
	DECODE (job_id, 
		'IT_PROG', salary*0.25,
		'ST_CLERK', salary*0.3,
		salary*0.1) Bonus
	FROM HR.employees;

spool off


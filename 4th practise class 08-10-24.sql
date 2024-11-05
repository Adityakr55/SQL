USE SCOTT;

-- 1.⁠ ⁠WAQTD DETAILS OF EMPLOYEES WORKING IN DEPT 10 OR 30
 SELECT *
 FROM EMP
 WHERE DEPTNO IN (10,30);

--  2.⁠ ⁠WAQTD NAMES OF EMPLOYEES HIRED DURING 1982
SELECT ENAME
FROM EMP
-- WHERE HIREDATE BETWEEN '1981-12-31' AND '1983-01-01';
WHERE HIREDATE LIKE '%82%';

--  3.⁠ ⁠WAQTD NAME AND SALARY GIVEN TO THE EMPLOYEES EARNING COMMISSION
SELECT ENAME,SAL
FROM EMP
WHERE COMM IS NOT NULL;

--  4.⁠ ⁠WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK IN DEPT 10 OR 30 HAVING CHARACTER 'A' IN THEIR NAMES
SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO IN (10,30) AND ENAME LIKE '%A%';

--  5.⁠ ⁠WAQTD NAMES OF THE EMPLOYEES HAVING CHAR 'S' AS THEIR LAST CHARACTER
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%S';

--  6.⁠ ⁠WAQTD NAME AND HIREDATE OF THE EMPLOYEES HIRED AFTER 1982 BUT BEFORE 1987
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN '1983-01-01' AND '1986-12-31';

--  7.⁠ ⁠WAQTD DETAILS OF THE EMPLOYEES WORKING AS ANALYST AND EARNING 4 DIGIT SALARY
SELECT *
FROM EMP
-- WHERE JOB = 'ANALYST' AND SAL BETWEEN 1000 AND 9999;
WHERE JOB = 'ANALYST' AND SAL LIKE '____';

--  8.⁠ ⁠WAQTD NAMES OF THE EMPLOYEES HIRED IN THE FIRST MONTH.
SELECT ENAME
FROM EMP
WHERE HIREDATE LIKE '____-01-__';
-- WHERE HIREDATE LIKE '%JAN%';

--  9.⁠ ⁠WAQTD DETAILS OF THE EMPLOYEES WORKING AS SALESHAN AND DOES NOT EARN ANY COMMISSION
SELECT *
FROM EMP
WHERE JOB='SALESMAN' AND COMM IS NULL;

-- 18.⁠ ⁠WAQTD NAME AND SALARY GIVEN TO THE EMPLOYEES HIRED DURING 1999 INTO DEPT 10 OR 40
SELECT ENAME,SAL
FROM EMP
-- WHERE HIREDATE BETWEEN '1999-01-01' AND '1999-12-31' AND DEPTNO IN (10,40);
WHERE HIREDATE LIKE '1999%' AND DEPTNO IN (10,40);

-- 11.⁠ ⁠WAQTD DETAILS OF EMPLOYEES HAVING TWO L'S PRESENT IN THE NAMES AND WORKS AS MANAGER
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND ENAME LIKE '%L%L%';

-- 12.⁠ ⁠WAQTD NAMES OF EMPLOYEES WHO EARN COMMISSION BUT NOT SALARY
SELECT ENAME 
FROM EMP
WHERE COMM IS NOT NULL AND SAL IS NULL;

-- 13.⁠ ⁠WAQTO NAMES OF THE EMPLOYEES IF NAME STARTS WITH 'A' OR 'J' OR 'S'
SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%' OR ENAME LIKE 'J%' OR ENAME LIKE 'S%';

-- 14.⁠ ⁠LIST ALL THE EMPLOYEE NAMES EXCEPT FOR THE EMPLOYEES WHO'S NAME HAS 'A' AS THE 3rd CHARCTER.
SELECT ENAME 
FROM EMP
WHERE ENAME NOT LIKE '__A%';

-- 15.⁠ ⁠LIST THE DETAILS OF THE EMPLOYEES WORKING AS MANAGER'S AND HIRED AFTER 1984 AND HAS A NAME WHICH ENDS MITH 'S'.
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND HIREDATE> '1984-12-31' AND ENAME LIKE '%S';

-- 16 WAQTD THE DETAILS OF THE EMPLOYEE WHOSE NAME STARTS WITH CONSONANTS.
SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'A%' AND ENAME NOT LIKE 'E%' AND ENAME NOT LIKE 'I%' AND ENAME NOT LIKE 'O%' AND ENAME NOT LIKE 'U%';

-- 17 WAQTD THE DETAILS OF THE EMPLOYEES ALONG WITH 10% IN ANNUAL SAL IF THE EMPLOYEE WORKS IN DEPT 10,20,30, AS A MANAGER OR CLERK AND HIRED DURING
--    1980 AND 1987 AND NOT EARNING SAL BETWEEN 1000 AND 2000 AND HAVING A REPORTING MANAGER (MGR) AND NOT EARNING COMM.
 SELECT *,SAL*12*1.1
 FROM EMP
 WHERE DEPTNO IN (10,20,30) AND JOB IN ('MANAGER', 'CLERK') AND HIREDATE BETWEEN '1980-01-01' AND '1987-12-31' AND SAL NOT BETWEEN 1001 AND 1999 AND MGR IS NOT NULL AND COMM IS NULL;
 
 
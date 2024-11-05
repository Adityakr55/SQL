USE SCOTT;
-- 1.⁠ ⁠WAQTD DNAME OF THE EMPLOYEES WHOS NAME IS SHITH
select dname 
from dept
where deptno = (select deptno from emp where ename = 'SMITH');

-- 2.⁠ ⁠WAQTD ONAME AND LOC OF THE EMPLOYEE WHOS ENAME IS KING
SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'KING');

-- 3.⁠ ⁠WAQTD LOC OF THE EMP WHOS EMPLOYEE NUMBER IS 7902
SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE EMPNO = 7902);

-- 4.⁠ ⁠WAQTD DNAME AND LOC ALONG WITH DEPTNO OF THE EMPLOYEE WHO'S NAME ENDS WITH 'R'.
SELECT DNAME, LOC, DEPTNO
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%R');

-- 5.⁠ ⁠WAQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION IS PRESIDENT
SELECT DNAME 
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE JOB = 'PRESIDENT');

-- 6.⁠ ⁠WAQTD NAMES OF THE EMPLOYEES WORKING IN ACCOUNTING DEPARTMENT
SELECT ENAME
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'ACCOUNTING');

-- 7.⁠ ⁠WAQTD ENAME AND SALARIES OF THE EMPLOYEES WHO ARE WORKING IN THE LOCATION 'CHICAGO
SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC = 'CHICAGO');

-- 8.⁠ ⁠WAQTD DETAILS OF THE EMPLOYEES WORKING IN SALES
SELECT *
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'SALES');

-- 9.⁠ ⁠WAQTD DETAILS OF THE EMP ALONG WITH ANNUAL SALARY IF EMPLOYEES ARE WORKING IN NEW YORK
SELECT EMP.*,SAL*12
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC = 'NEW YORK');

-- 10.⁠ ⁠WAQTD NAMES OF EMPLOYEES WORKING IN OPERATIONS DEPARTMENT
SELECT ENAME
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'OPERATIONS');

-- 11 WAQTD THE DETAILS OF THE EMPLOYEES EARNING SAME SAL
/* 

SELECT *
FROM EMP
GROUP BY SAL
HAVING COUNT(SAL) > 1; 

THIS IS WRONG because when using GROUP BY SAL, 
all columns (*) cannot be selected, as they are not part of the GROUP BY clause or an aggregate function. 

*/

SELECT *
FROM EMP
WHERE SAL IN (SELECT SAL FROM EMP GROUP BY SAL HAVING COUNT(*) > 1);


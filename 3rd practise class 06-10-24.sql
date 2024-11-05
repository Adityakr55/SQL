
use scott;

-- 1. WAQTD names and deptno, job of emps working as clerk in dept 10 or 20.
select ename,deptno
from emp
where job = 'CLERK' AND (deptno = 10 OR deptno = 20);


-- 2. WAQTD details of employees working as clerk or manager in dept 10.
select *
from emp
where deptno =10 AND (job = 'CLERK' OR job = 'MANAGER');


-- 3. WAQTD names of employees working in dept 10,20,30,40.
select ename
from emp
where deptno = 10 or deptno = 20 or deptno = 30 or deptno = 40 ;


-- 4. WAQTD DETAILS OF EMPLOYEES WITH EMPNO 7902,7839.
select *
from emp
where empno = 7902 or empno = 7839;

-- 5. WAQTD DETAILS OF EMPLOYEES WORKING AS MANAGER OR SALESMAN OR CLERK
select *
from emp
where job = 'MANAGER' OR job = 'SALESMAN' OR job = 'CLERK';


-- 6. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 AND BEFORE 87
select ename
from emp
where hiredate > '1981-12-31' and hiredate < '1987-01-01';


-- 7. WAQTD DETAILS OF EMPLOYEES EARNING MORE THAN 1250 BUT LESS THAN 3000
select *
from emp
where sal > 1250 and sal <3000;


-- 8. WAQTD NAMES OF EMPLOYEES HIRED AFTER 81 INTO DEPT 10 OR 30
select ename
from emp
where hiredate > '1981-12-31' and (deptno = 10 or deptno = 30);


-- 9.⁠ ⁠WAQTD NAMES OF EMPLOYEES ALONG WITH ANNUAL SALARY FOR THE EMPLOYEES WORKING AS MANAGER OR CLERK INTO DEPT 10 OR 30
select ename, sal*12 AS 'ANNUAL SAL'
from emp
where job ='MANAGER' AND (deptno = 10 or deptno = 30) or job = 'CLERK' AND (deptno = 10 or deptno = 30);


-- 10.⁠ ⁠WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF SAL IS BETWEEN 1000 AND 4000 ANNUAL SALARY MORE THAN 15000
select *, sal*12 as 'ANNUAL SAL'
from emp
where (sal> 1000 and sal<4000) and sal*12 > 15000;


-- 11.⁠ ⁠WAQTD DETAILS OF ALL THE EMPLOYEES EXCEPT THE EMPS WORKING IN DEPT 10 OR 30
select *
from emp
where deptno != 10 and deptno != 30;


-- 12.⁠ ⁠WAQTD DETAILS OF ALL EMPS ALONG WITH ANNUAL SALARY EXCEPT THE EMPLOYEES WORKING AS ANALYST OR MANAGER.
select * , sal*12 as 'ANNUAl SAL'
from emp
where job != 'ANALYST' and job != 'MANAGER';


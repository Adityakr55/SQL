USE SCOTT;

-- 1. write a query to display(WAQTD) annual salary of employee whose name is SMITH.
SELECT SAL*12 "ANNUAL SAL"
FROM EMP
WHERE ENAME = 'SMITH';


-- 2. WAQTD name of the employees working as CLERK.
SELECT ENAME
FROM EMP
WHERE JOB = 'CLERK';


-- 3. WAQTD salary of employees who are working as SALESMAN.
SELECT SAL
FROM EMP
WHERE JOB = 'SALESMAN';


-- 4. WAQTD details of the employees who earns more than 2000.
SELECT * 
FROM EMP
WHERE SAL>2000;


-- 5. WAQTD details of the employees whose name is JONES.
SELECT * 
FROM EMP
WHERE ENAME = 'JONES';


-- 6. WAQTD details of the employees who was hires after 01-JAN-81.
SELECT * 
FROM EMP
WHERE HIREDATE> '1981-01-01';


-- 7. WAQTD name ans salary along with his annual salary if the annual salary is more than 12000.
SELECT ENAME,SAL, SAL*12 AS ANNUAL_SAL
FROM EMP
WHERE SAL*12 > 12000;


-- 8. WAQTD empno of the employees who are working in dept 30.
SELECT ENAME
FROM EMP
WHERE DEPTNO = '30';


-- 9. WAQTD ename and hiredate if they are hired before 1981.
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE < '1981-01-01';


-- 10. WAQTD details of the employees working as MANAGER.
SELECT * 
FROM EMP
WHERE JOB = 'MANAGER';


-- 11. WAQTD name and salary given to an employee if employee earns a commission of rupees 1400.
SELECT ename, sal
FROM EMP
WHERE comm = 1400;


-- 12. WAQTD details of employees having commission more than salary.
SELECT * 
FROM EMP
WHERE comm>sal;

-- 13. WAQTD empno of employees hires before the year 87.
SELECT empno
FROM EMP
WHERE hiredate<'1987-01-01';



-- 14. WAQTD details of employees working as an analyst.
SELECT * 
FROM EMP
WHERE job = 'ANALYST';


-- 15. WAQTD details of emps earning more than 2000 rupees per month.
SELECT * 
FROM EMP
WHERE SAL>2000;

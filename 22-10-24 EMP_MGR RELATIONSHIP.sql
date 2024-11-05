use scott;
-- 71.⁠ ⁠WAQTD SMITHS REPORTING MANAGER'S NAME
SELECT ENAME
FROM EMP
WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME = 'SMITH');

-- 72.⁠ ⁠WAQTD ADAMS MANAGER'S MANAGER NAME
SELECT ENAME
FROM EMP
WHERE EMPNO IN (SELECT MGR FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME = 'ADAMS'));

-- 73.⁠ ⁠WAQTD DNAME OF JONES MANAGER
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN ( SELECT DEPTNO FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME = 'JONES'));

-- 74.⁠ ⁠WAQTD MILLER'S MANAGER'S SALARY
SELECT SAL
FROM EMP
WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME = 'MILLER');

-- 75.⁠ ⁠WAQTD LOC OF SMITH'S MANAGER'S MANAGER,
SELECT LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME = 'SMITH')));

-- 76.WAQTD NAME OF THE EMPLOYEES REPORTING TO BLAKE
SELECT ENAME
FROM EMP 
WHERE MGR IN (SELECT EMPNO FROM EMP WHERE ENAME = 'BLAKE');

-- 77.WAQTD NUMBER OF EMPLPOYEES REPORTING TO KING
SELECT COUNT(*)
FROM EMP
WHERE MGR IN (SELECT EMPNO FROM EMP WHERE ENAME = 'KING');

-- 78.⁠ ⁠WAQTD DETAILS OF THE EMPLOYEES REPORTING TO JONES
SELECT *
FROM EMP
WHERE MGR IN (SELECT EMPNO FROM EMP WHERE ENAME = 'JONES');

-- 79.⁠ ⁠WAQTD ENAMES OF THE EMPLOYEES REPORTING TO BLAKE'S MANAGER
SELECT ENAME
FROM EMP
WHERE MGR IN (SELECT MGR FROM EMP WHERE ENAME = 'BLAKE');

-- 80.⁠ ⁠WAQTD NUMBER OF EMPLOYEES REPORTING TO FORD'S MANAGER
SELECT COUNT(*)
FROM EMP
WHERE MGR IN (SELECT MGR FROM EMP WHERE ENAME = 'FORD');
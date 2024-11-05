use scott;

-- 1. waqtd the details of the employee who is hired after the employee who is earning 2nd max sal.
select *
from emp
where hiredate > all(select hiredate 
					from emp
                    where sal in (select max(sal)
									from emp 
                                    where sal< (select max(sal)
												from emp)));

-- 2.⁠ ⁠waqtd the dNAME of the employee who are earning more than smith of accounting dept
	select DNAME
    from DEPT
    where DEPTNO IN (select DEPTNO
					from emp
                    where SAL >(SELECT SAL FROM EMP WHERE ENAME = 'SMITH' AND DEPTNO IN (select deptno
										from dept
                                        where dname = 'ACCOUNTING')));

-- 3.⁠ ⁠WAQTD THE EMP  details if the employee reports to smiths manager's manager and works in loc NEW YORK.
	                select *
			        from emp
                    where mgr in (select mgr
								from emp
								where empno in (select mgr
												from emp
												where ename = 'SMITH')) and deptno in (select deptno
																						from dept
                                                                                        where loc = 'NEW YORK');

-- 4.⁠ ⁠WAQTD THE DNAME and lac of the employes reporting to smith's manager and earning more than MILLER.
	SELECT DNAME,LOC
    FROM DEPT
    WHERE DEPTNO IN (SELECT DEPTNO
					FROM EMP
                    WHERE MGR IN (SELECT MGR 
									FROM EMP
                                    WHERE ENAME = 'SMITH')AND SAL > ALL (SELECT SAL
																FROM EMP
																WHERE ENAME = 'MILLER'));


-- 5. WAQTD the EMP NAME AND deptno of the employee who are hired 2nd and earning sal between 1000 and 2007
SELECT ENAME,DEPTNO
FROM EMP
WHERE HIREDATE IN (SELECT MIN(HIREDATE) FROM EMP WHERE HIREDATE > (SELECT MIN(HIREDATE) FROM EMP ))
												AND SAL BETWEEN 1000 AND 2007; 


-- 6. WAQTD the DNAME of the employee who is hired first
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE HIREDATE IN (SELECT MIN(HIREDATE) FROM EMP));


-- 7. WAQTD the dept details of the employes whose reporting manager is earning sal more than 2000
 SELECT *
 FROM DEPT
 WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE MGR IN (SELECT EMPNO FROM EMP WHERE SAL > 2000));

-- 8. WAQTD the DEPT NAME of the employee whose ENAME  starts with consonants
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME NOT LIKE '%A' AND ENAME NOT LIKE 'E%' AND ENAME NOT LIKE 'I%' AND ENAME NOT LIKE 'O%' AND 
ENAME NOT LIKE 'U%');

-- WAQTD the name of the employee working in accounting dept and reporting to king
SELECT ENAME
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME = 'ACCOUNTING') AND MGR IN (SELECT EMPNO FROM EMP WHERE ENAME = 'KING');

-- 1.⁠ ⁠waqtd the no of employees working as salesman and earning more than all the employees of dept 20. 
SELECT COUNT(*)
FROM EMP
WHERE JOB = 'SALESMAN' AND SAL > ALL(SELECT SAL
										FROM EMP
                                        WHERE DEPTNO = 20);


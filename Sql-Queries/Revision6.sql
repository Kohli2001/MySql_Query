use test;

-- NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE employee

select ename , loc 
from emp natural join dept;

-- WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE 
-- WORKING IN 
-- ACCOUNTING

select dname,sal 
from emp natural join dept
where emp.deptno = dept.deptno and dept.dname='ACCOUNTING';

-- .WAQTD DNAME AND ANNUAL SALARY FOR ALL 
-- EMPLOYEES WHOS SALARY 
-- IS MORE THAN 2340

select dname , sal*12 as AnnualSal 
from emp natural join dept 
where emp.deptno= dept.deptno and  emp.sal>2340;

-- .WAQTD ENAME AND DNAME FOR EMPLOYEES HAVING 
-- CAHARACTER 'A' 
-- IN THEIR DNAME

select ename,dname 
from emp natural join dept 
where emp.deptno= dept.deptno and dname like '%A%' ;

-- WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES 
-- WORKING AS SALESMAN

select ename,dname 
from emp inner join dept 
where emp.deptno = dept.deptno and job='SALESMAN';







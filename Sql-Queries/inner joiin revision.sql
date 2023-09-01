use test;


-- INNER JOIN REVISON

select ename , dname
from emp , dept
where emp.deptno=dept.deptno;

select ename,dname,job,loc 
from emp inner join dept
on emp.deptno=dept.deptno and job='CLERK' and substr(ename,1,1) NOT in ('A','E','I','O','U');


-- //deptno field list is ambigous
select ename, job,deptno,dname,loc
from emp inner join dept
on emp.deptno= dept.deptno and emp.deptno in (10,20) and job='MANAGER';


-- //giving same output in both on or where clouse
select ename , job,dname, loc
from emp inner join dept
where emp.deptno = dept.deptno and dept.dname='SALES' and  emp.job='SALESMAN';

select ename , job, dname,loc
from emp inner join dept
where emp.deptno = dept.deptno and dept.loc IN ('CHICAGO' , 'DALLAS') and emp.job in ('CLERK','PRESIDENT');

-- //WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE
-- WORKING IN
-- ACCOUNTING.

select dname , sal 
from emp inner join dept
where emp.deptno = dept.deptno and dept.dname='ACCOUNTING';

-- WAQTD DNAME AND ANNUAL SALARY FOR ALL
-- EMPLOYEES WHOS SALARY
-- IS MORE THAN 2340-- 


select dname,sal*12 as Annualsal 
from emp inner join dept
where emp.deptno = dept.deptno and emp.sal>2340;

-- WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES
-- WHO'S EMPNO ARE
-- (7839,7902) AND ARE WORKING IN LOC NEW YORK.

select dname,empno
from emp inner join dept
where emp.deptno = dept.deptno and emp.empno in (7839, 7902) and dept.loc='NEWYORK';



select * from emp ;
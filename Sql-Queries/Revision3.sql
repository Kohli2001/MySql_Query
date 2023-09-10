use test;

select * from emp;

select ename, dname , job, loc 
from emp inner join dept
on emp.deptno = dept.deptno and job='CLERK' and 
substr(ename,1,1) not in ('A','E','I','O','U');

-- WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES 
-- WHO'S EMPNO ARE (7839,7902) AND ARE WORKING IN LOC 
-- NEW YORK
select dname , empno , loc
from emp inner join dept 
on emp.deptno = dept.deptno and empno in (7839,7902) and loc = 'NEW YORK';

-- WAQTD DNAME AND ANNUAL SALARY FOR ALL 
-- EMPLOYEES WHOS SALARY 
-- IS MORE THAN 234

select dname , sal*12 as annualsal 
from emp natural join dept 
where emp.deptno = dept.deptno 
and sal>234;


-- WAQTD names and dnames of all the employees even though 
-- the there are no employees in a dept .

select ename , dname 
from emp cross join dept;

-- .WAQTD EMPLOYEE'S NAME AND MANAGER'S SALARY 
-- FOR ALL THE EMPLOYEES IF MANAGER'S SALARY ENDS 
-- WITH 50

select e.ename , m.sal 
from emp e join emp m 
on e.mgr = m.empno and m.sal like '%50';

-- .WAQTD EMP NAME AND MANAGER NAME ALONG 
-- WITH THEIR ANNUAL SALARIES IF EMPLOYEE WORKS IN 
-- DEPT 10 , 20 AND MANAGER'S SAL IS GREATER THAN 
-- EMPLOYEES SALARY 

select e.ename , m.ename , e.sal , m.sal 
from emp e, emp m 
where e.mgr = m.empno and e.deptno in (10,20) and 
m.sal>e.sal;

-- WAQTD EMP NAME AND MANAGER NAME IF BOTH ARE 
-- WORKING IN SAME JOB

select e.ename , m.ename 
from emp e , emp m
where e.mgr = m.empno and e.job = m.job;

select e.ename , m.ename,m1.ename , d.dname 
from emp e, emp m , emp m1 , dept d
where e.mgr=m.empno and m.mgr = m1.empno and m1.mgr = d.empno
  and d.loc = 'DALLAS';

select e.ename, m.ename , e.hiredate , m.hiredate
from emp e, emp m 
where e.mgr = m.empno and e.hiredate<m.hiredate;

select e.ename , m.ename , m1.ename 
from emp e, emp m, emp m1
where e.mgr = m.empno and m.mgr=m1.empno;

select e.ename , m2.ename 
from emp e, emp m, emp m1, emp m2
where e.mgr= m.empno and m.mgr=m1.empno and m1.mgr= m2.empno;

select e.ename , m2.ename 
from emp e,emp m, emp m1, emp m2
where e.mgr=m.empno and m.mgr= m1.empno and m1.mgr=m2.empno and m2.job='MANAGER' and m2.deptno in (10,20);


select e.ename , m.ename 
from emp e , emp m
where e.mgr=m.empno and e.sal >(select sal from emp where ename='SMITH');





select ename,
REGEXP_REPLACE(ename, '[aeiouAEIOU]', '')
from emp;

select ename ,replace(ename , 'aeiouAEIOU' , '') from emp ;

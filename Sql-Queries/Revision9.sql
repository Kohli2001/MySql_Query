use test;

select ename , dname 
from emp left outer join dept 
on emp.deptno = dept.deptno; 

select ename ,dname 
from emp full join dept
on emp.deptno = dept.deptno;

-- WAQTD number of emp earning sal more than 1200 in each job 
-- and the total sal needed to pay emp of each job must exceeds 
-- 3800.

select count(*), sum(sal)
from emp
where sal>1200 
group by job 
having sum(sal)>3800;

-- WAQTD job and total salary of the employees if the employees 
-- Are earning more than 1500.

select job , sum(sal)
from emp 
where sal>1500
group by job;


-- . WAQTD job and total salary of each job , if the total salary 
-- Of each job is greater than 3450

select job, sum(sal) 
from emp
group by job
having sum(sal)>3450;

 
-- WAQTD number of employees working in each dept having 
-- At least 2 emp's Character 'A' or 'S' in their names 

select count(*), deptno
from emp
where ename like '%A%'or ename like '%S%'
group by deptno
having count(*)>=2;

--  WAQTD names that are repeated exactly twice .
select ename, count(*) 
from emp
group by ename
having count(*)=2;

 -- WAQTD the names that are repeated
 
 select ename 
 from emp
 group by ename
 having count(*)>1;
 
-- WAQTD the designations in which there are at lest 2 employees 
-- Present .
select job 
from emp 
group by job
having count(*)>=2;

-- 7.WAQDTD TOTAL SALARY NEEDED TO PAY AND NUMBER 
-- OF SALESMANS IN EACH DEPT
select sum(sal)
from emp 
where job='SALESMAN'
group by deptno;

-- WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN 
-- EMPLOYEE TABLE 

select count(*) 
from emp 
group by sal;

-- 4.WAQTD AVG SALARY NEEDED TO PAY ALL THE 
-- EMPLOYEES IN EACH DEPARTMENT EXCLUDING THE 
-- EMPLOYEES OF DEPTNO 20
select avg(sal), deptno 
from emp
where deptno not in (20)
group by deptno; 

-- .WAQTD NUMBER OF EMPLOYEES HAVING CHARACTER 
-- 'A' IN THEIR NAMES IN EACH JOB
select count(*), job
from emp
where ename like '%A%' 
group by job; 

-- .WAQTD MAXIMUM SALARIES GIVEN TO AN EMPLOYEE 
-- WORKING IN EACH DEPT

select max(sal) , deptno
from emp
group by deptno;

-- WAQTD NUMBER OF TIMES THE SALARIES PRESENT IN 
-- EMPLOYEE TABLE

select count(*)
from emp 
group by sal;


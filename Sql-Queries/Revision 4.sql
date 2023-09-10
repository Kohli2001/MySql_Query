use test;

select * from emp;

select min(sal) , deptno
from emp
group by deptno;

select max(sal), deptno
from emp
group by deptno;

select max(sal) 
from emp 
where deptno in (10,20)
group by job;


select count(ename) , deptno
from emp
where job in ('CLERK' , 'MANAGER')
group by deptno;

select count(*),deptno
from emp 
where substr(ename , -2,1) in ('R')
group by deptno;

select count(*) , deptno
from emp 
where substr(ename,-1,1)  not in ('A','E','I','O','U')
group by deptno;

select count(*)
from emp 
where ename like '%A%' or ename like '%E%' or ename like '%I%' or ename like '%O%' or ename like '%U%'  
group by job;





 


 
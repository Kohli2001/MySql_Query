use test;


-- assignment based on SubQuery

select * from emp;
select sal, ename
from emp
where sal =(select sal 
from emp 
where ename = 'SMITH');

select * from emp 
where deptno = (select deptno from emp where ename = 'ALLEN');

select * from emp 
where job = (select job from emp where ename = 'MILLER');

select ename , hiredate from emp where hiredate = (select hiredate from emp 
where ename = 'JONES');

select ename, sal, deptno 
from emp where sal = (select sal from emp where deptno in(10,20 )
 and ename = 'SCOTT' and substr(ename , 1 ,1) in ('A', 'E', 'I', 'O','U')); 
 
 select * from emp where sal < (select sal from emp where ename ='MILLER');


select * from emp where hiredate <(select hiredate 
from emp where ename ='JAMES');

select * from emp where hiredate  > (select hiredate from emp where ename = 'JONES');
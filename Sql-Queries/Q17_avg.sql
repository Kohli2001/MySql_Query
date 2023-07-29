use test;

-- Avg()

select round(avg(sal)) from emp;


select  sum(sal) , (avg(sal)) from emp
where deptno = 20 ; 

select sum(sal) , round(avg(sal)) from emp 
where job = 'MANAGER';

select sum(sal) , round(avg(sal)) from emp 
where job = 'clerk'
and  deptno = 10;


select max(sal) , min(sal) , sum(sal) , avg(sal) from emp 
where job = 'ANALYST' or
job = 'PRESIDENT';









select * from emp ;
use test;

-- sum()

select sum(sal) from emp ;


select sum(sal) from emp 
where job = 'CLERK';

select sum(sal) from emp
where deptno in(10,30);


select sum(sal) from emp 
where job in ('CLERK' , 'MANAGER') and 
deptno in (10,20,30) 
and  ename like 'A%' or ename like 'E%' or ename like'I%' or ename like'O%' or ename like'U%' ;


select sum(sal) from emp 
where deptno = 20 ;





select ename , substr(ename , 1 , -1) in ('A', 'E' , 'I','O','U') from emp;









select * from emp ;
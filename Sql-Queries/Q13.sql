use test;

select * from emp;
-- min() Funtions

select min(sal)  from emp
where length(ename)=4;

select min(sal) from emp 
where deptno =10;

select min(sal) from emp
where job='SALESMAN'
and deptno in (10,20, 30);


select min(sal) from emp 
where substr(ename , 1,1) in ('A' ,'E', 'I', 'O','U')
and deptno in (10,30);

select ename , substr(ename , 1,1) in ('A' ,'E', 'I', 'O','U') from emp;

select min(sal) from emp 
where job = 'CLEARK' and deptno in (10,30);


select min(sal) from emp 
where deptno = 30 and job = 'MANAGER';





use test;

select * from emp;



select * from emp 
where hiredate like '%FEB%' and sal is not null and deptno in (10,20) and job in ('CLERK ' , 'MANAGER')
and mgr  not in (7839);


select * from emp where hiredate like '%02%';

select * from emp where extract(month from hiredate) in (2);

select * from emp where substr(ename ,-1) in ('A','E','I','O','U');

select * from emp where substr(ename , 1,1) in ('A','S');

select * from emp where comm is not null and deptno is not null and 
mgr in (7788, 7839) and ename not in ('SMITH','JAMES', 'JONES');



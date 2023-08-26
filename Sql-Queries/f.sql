use test;

select  ename, sum(sal) from emp
group by sal;

select ename ,length(ename) from emp;

select ename from emp 
where length(ename)=4;

select ename from emp ;

select ename, greatest(sal, null) from emp;

select sum(sal) from emp 
where substr(ename , -1,1) in ('A','E','I','O','U') and job in ('CLERK,' , 'MANAGER') AND deptno in (10,20,30);

select ename from emp where substr(ename , -1,1) in ('A','E','I','O','U');





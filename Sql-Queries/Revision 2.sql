use test;

select * from emp
where ename = 'SCOTT';

select ename from emp 
where sal>all(select sal from emp where ename ='SCOTT' or
       deptno in (select deptno from dept where dname='ACCOUNTING'));

select * from emp
where job ='MANAGER' and 
		deptno in (select deptno from dept where loc='CHICAGO');
        
select * from dept;
select * from emp where deptno =30;
select sal from emp where ename ='SCOTT';


select substr(ename , 1, length(ename)/2) 
from emp 
where mod(length(ename) , 2)=0;
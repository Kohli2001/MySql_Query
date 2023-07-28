use test; 

select * from emp;

-- operator

select ename, sal , sal+sal*10/100 as hike from emp ;

select ename , sal , sal- sal*10/100 as deduction from emp;

select ename , sal  from emp 
where sal+sal*10/100 > 2000;


select * from emp 
where sal>=2000;

select ename , sal , hiredate 
from emp 
where hiredate = 1980-12-17;

select * from emp ;

select  * from emp 
where empno = 7839 and 
job = 'PRESIDENT'  and 
hiredate = 1987;


select * from emp 
where not deptno in (30,20) ; 


select * from emp 
where mgr is null ;


select * from emp 
where mgr is not null;

select * from emp 
where ename like ('A%');

select * from emp 
where ename like 'A%' ;




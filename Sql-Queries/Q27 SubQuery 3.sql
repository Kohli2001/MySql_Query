use test;

 
 
select * from emp 
where sal = (select max(sal) from emp);


select max(sal) from emp 
where sal < (select max(sal) from emp) ;


select * from emp 
where sal= (select max(sal) from emp 
where sal<(select max(sal) from emp
where sal<(select max(sal) from emp)));

select * from department 
where depnto in (select deptno from emp where sal=(select max(sal) from emp));

select * from emp 
where sal=(select min(sal) from emp);

select * from emp 
where sal= (select min(sal) from emp 
where sal>(select min(sal) from emp 
where sal>(select min(sal) from emp
where sal>(select min(sal) from emp))));

select *  from emp 
where hiredate = (select min(hiredate) from emp);

select * from emp 
where hiredate= (select max(hiredate) from emp );

select dname , loc 
from department 
where depnto = (select deptno from emp 
where hiredate= (select hiredate = (select max(hiredate) from emp
where hiredate = (select max(hiredate) from emp))));




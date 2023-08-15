use test;


-- INNER JOINS 

select * from emp;


select ename , dname , loc,job, sal 
from emp , department 
where emp.deptno = department.depnto and emp.deptno in (10,20);

select * from emp , department
where emp.deptno = department.depnto;


select * 
from emp inner join department
on emp.deptno = department.depnto;


select ename , dname 
from emp , department
where emp.deptno = department.depnto;


select ename, job, dname, loc 
from emp , department 
where emp.deptno = department.depnto and emp.job = 'CLERK'
 and substr(ename , 1,1) not in ('A','E','I','O','U');
 
 
 
 select ename ,job,deptno , dname, loc 
 from emp , department
 where emp.deptno = department.depnto and emp.deptno in (10,20) and job = 'MANAGER';
 
 
 select ename , job, dname, loc 
 from emp inner join department 
 on  emp.deptno = department.depnto and job ='SALESMAN' and dname = 'SALES';

select ename , job, dname, loc 
from emp inner join department
on emp.deptno = department.depnto and
 loc in ('CHICAGO' , 'DALLAS') and job in ('CLERK' , 'PRESIDENT');
 
 
 
 
 
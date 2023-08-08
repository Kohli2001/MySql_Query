use test;

-- select substr(ename , 1 , 3)|| reverse(substr(job, -3)) from emp ;

select count(*) from  emp;
select length(ename), length(sal),  length(mgr), length(comm), length(job),length(hiredate) from emp;




-- combination Case1 & Case 2

select ename from emp 
where sal>(select sal from emp where ename = 'SCOTT') and
      deptno= (select depnto from department where dname = 'ACCOUNTING');
      
      
select * 
from emp 
where job = 'MANAGER' and 
 deptno = (select depnto from department where loc = 'CHICAGO');  
 
 
 select ename , sal from emp
 where  sal>(select sal from emp where ename = 'KING') and 
         deptno in (select depnto from department where dname in ('ACCOUNTING' , 'SALES')); 
         
select * from emp 
where job = 'SALESMAN' and 
         deptno = (select depnto from department where dname = 'OPERATION') and 
hiredate<(select hiredate from emp where ename  = 'KING');


select ename from emp 
where deptno in ( select depnto from department where dname like '%%S'); 
         

select dname from department 
where depnto in (select deptno from emp where ename like '%A%');

select dname , loc  from department 
where depnto in (select deptno from emp where sal=800);  

select dname from department 
where  depnto in (select deptno from emp where comm is not null);


select loc from department 
where depnto in (select deptno from emp where comm is not null ) and 
      depnto = 40;
      

      
      
      

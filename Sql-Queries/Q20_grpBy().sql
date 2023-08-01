use test;

select * from emp ;


select max(sal) , deptno
from emp 
group by deptno;

select min(sal) , deptno 
from emp 
group by deptno;

select max(sal) ,deptno
from emp 
where deptno in (10,20)
group by deptno;

select sum(sal) , deptno
from emp
where job ='CLERK'
group by deptno; 


select sum(sal) , deptno 
from emp 
group by deptno ;


select count(* ) , deptno
from emp 
group by deptno ;


select count(*) , job 
from emp 
group by job;

select count(*) , deptno
from emp 
where job in ('CLERK' , 'MANAGER')
group by deptno ;

select count(sal) , sal
from emp 
group by sal;


select count(ename) , ename  
from  emp 
group by ename;

select count(*) , job
from emp 
where job is not null and mgr is not null 
group by job ;

select count(*) , deptno
from emp  
where substr(ename, -2, 1) = 'R'
group by deptno;

select count(*) 
from emp 
where substr(ename , -1) not in ('A', 'E', 'I', 'O', U)
group by  job;



select count(*) ,comm
from emp 
group by comm;


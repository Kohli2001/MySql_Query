use test;

select * from emp ;

         --  Having clause
         
         
         select count(*)  , deptno 
         from emp 
         group by deptno 
         having count(deptno)>1;
         
         
         select count(*), job
         from emp 
         group by job 
         having count(job)>=3;
         
         select count(*)
         from emp 
         group by sal
         having count(sal)>1;
         
         select ename 
         from emp
         group by ename 
         having count(ename)>1
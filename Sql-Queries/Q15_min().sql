use test;


     --  min()
select min(sal)  from emp ;

select min(sal) from emp 
where deptno = 10;


select min(sal ) from emp
 where job = 'SALESMAN' and 
 deptno in (10,20);
 
 
 select min(sal) from emp 
 where substr(ename , 1) in ('A','E','I','O', 'U')
 AND deptno in(10,30);
 
 
 select min(sal) from emp 
 where job = 'CLEARK' and deptno in(10,30);
 
 select min(sal) from emp 
 where job = 'MANAGER ' and 
 deptno = 30;
 
 select min(sal) from emp 
 where job = 'SALESMAN'
 and deptno = 30 ;
 
 
 
 
 
 select * from emp;

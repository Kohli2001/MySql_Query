use test ;

-- count()
select count(empno) from emp ;

select count(*) from emp;

select count(empno) from emp 
where job = 'CLERK';

select count(empno) from emp 
where deptno = 10;

select count(empno) from emp 
where substr(ename , 1, 1)  not in ('A', 'E', 'I','O','U');


select count(*) from emp 
where hiredate = 1981-12-03;

select count(* ) from emp 
where job = 'MANAGER' and 
deptno in (10,30);


select max(sal) , min(sal) , sum(sal) , avg(sal) , count(empno) from emp 
where deptno = 20 ;



   
   
   
select * from emp ;


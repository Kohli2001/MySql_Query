use test;

-- DISTINICT


select distinct  ename , job from emp 
where job = 'CLERK';

select distinct ename , job from emp 
where job  = 'MANAGER';


select distinct ename , deptno from emp
where deptno = 20;

SELECT DISTINCT deptno 
	FROM emp;
    
    select distinct ename from emp 
    where job  = 'CLERK';
    
    
select distinct job , sal from emp;
    
select distinct  job  from emp ;

select distinct sal from emp;

select distinct ename , sal from emp;





use test;
select * from emp;

-- MULTI RAW FUNCTIONS

select max(sal)  from emp
where  length(ename) = 6;


select max(sal) from emp 
where job ='SALESMAN';

select max(sal) from emp
where job ='CLEARK'AND
deptno in (10,20,30) 
and substr(ename, 1, 1)  in ('A' , 'E', 'I' , 'O', 'U');


select max(sal) from emp 
where job = 'MANAGER' and 
deptno in (10,30) ;

select max(sal) from emp 
where deptno in(30,20) and job in('CLEARK ' , 'MANAGER' ) and reverse(job) like 'K%';

select max(sal) from emp 
where job = 'CLEARK' ;

select max(sal) from emp 
where sal*12>10000 and deptno in (10, 20) and mgr is null and substr(ename , 1, 1) not in ('A' , 'I', 'E' , 'O' , 'U') 
and length(ename) = 4 and reverse(substr(ename , 1, 1) , 3);
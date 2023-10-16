use test;

select ename , sal from emp 
where sal= (select sal from emp 
where ename ='SMITH');

select ename , deptno from emp 
where deptno =(select deptno from emp where ename ='ALLEN');

select * from emp 
where substr(ename , 1, 1) ='A' and job=(select job from emp where ename='BLAKE');


select ename , hiredate from emp 
where hiredate>31-12-1980  and hiredate<(select hiredate from emp where ename ='KING');

select ename from emp 
where sal>(select sal from emp where ename ='MILLER')and 
      sal<(select sal from emp where ename = 'ALLEN');

select ename , comm , deptno from emp 
where comm is not null and job = (select job from emp where ename ='ALLEN') 
and hiredate <(select hiredate from emp where ename='SCOTT');


select ename , sal , job from emp where sal*12>(select sal*12 from emp where ename='SMITH') 
and sal*12<(select sal*12 from emp where ename ='KING');


select ename from emp 
where deptno = (select deptno from emp where ename ='JAMES')and 
	 sal>(select sal from emp where ename ='ADAMS') and 
     job=(select job from emp where ename='MILLER') and 
     hiredate>(select hiredate from emp where ename ='MARTIN') and 
     comm>(select comm from emp where ename='WARD');
     
     
select dname from dept
where deptno in (select deptno from emp where job='CLERK');

select * from dept
where deptno in (select deptno from emp where sal>2000);

select dname , loc from dept 
where deptno in (select deptno from emp where job = 'SALESMAN');

select ename from emp 
where deptno in (select deptno from dept where job='NEW YORK');

select * from emp 
where deptno in (select deptno from dept where dname ='SALES');

select ename from emp 
where sal> (select sal from emp where ename ='SCOTT') and 
      deptno in (select deptno from dept where dname='ACCOUNTING');
      
      
select * from emp 
where job ='MANAGER' and 
      deptno in (select deptno from dept where loc='CHICAGO');
      
select ename , sal from emp
where sal>(select sal from emp where ename='KING') and 
      deptno in (select deptno from dept where dname in ('ACOOUNTING', 'SALES')); 
      
select * from emp
where job ='SALESMAN' and  hiredate<(select hiredate from emp where ename ='KING') and 
      deptno in (select deptno from dept where dname ='OPERATION' );
      
      
      
select ename from emp
where deptno in (select deptno from dept where  dname like  '%S');

select dname from dept
where deptno in (select deptno from emp where ename like '%A%');


select * from emp 
where sal=(select max(sal) from emp);


SELECT *
FROM emp
ORDER BY sal DESC
LIMIT 1 OFFSET 1;


-- ////case 5/////


select ename from emp
where empno = (select mgr from emp 
where ename='ALLEN');

select ename from emp
where empno = (select mgr from emp where ename ='SMITH');



select ename from emp
where empno = ( select mgr from emp where ename = 'KING');

select ename from emp
where empno in (select mgr from emp where ename in ('JAMES', 'MILLER', 'FORD'));


select ename from emp 
where empno = (select mgr from emp where ename = 'MARTIN' )and substr(ename , 1) not in ('A','E','I','O','U');











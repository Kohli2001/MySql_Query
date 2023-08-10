use test;

select * from emp;


-- case-5
select ename from emp
where empno = (select mgr from emp where ename='ALLEN');

select ename from emp
where empno = (select mgr from emp 
where ename ='SMITH');

select ename from emp
where empno = (select mgr from emp where ename='KING');


select ename from emp 
where empno in (select mgr from emp
where ename in ('JAMES', 'MILLER', 'FORD'));


select ename from emp
where empno in (select mgr from emp where ename in ('BLAKE' , 'CLERK'));

select ename from emp 
where empno in (select mgr from emp where ename ='MANAGER' 
and substr(ename,1,1) not in ('A','E','I','O','U'));

select ename from emp 
where empno in (select mgr from emp where deptno in (10,20));

select ename from emp 
where empno in (select mgr from emp where ename='ADAMS' ) and job in ('MANAGER', 'ANALYST') 
AND deptno in (20,30) and ename like '_____' ;

select ename from emp
where mgr = (select empno from emp where ename ='KING');

select ename from emp
where mgr = (select empno from emp where ename ='BLAKE');


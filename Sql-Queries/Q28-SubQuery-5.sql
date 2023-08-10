use test;

select * from emp;


-- case 5 ....MANAGER'S MANAGER NAME...........

select ename from emp
where empno = (select mgr from emp where empno=(select mgr from emp where ename= 'SMITH'));

select ename from emp
where empno= (select mgr from emp 
where empno= (select mgr from emp 
where ename = 'MILLER')and deptno in (10,20));

select ename from emp 
where empno = (select mgr from emp 
where empno = (select mgr from emp 
where ename = 'ALLEN' )and job ='MANAGER');

select ename from emp
where empno = (select mgr from emp
where empno = (select mgr from emp 
where ename = 'MARTIN' and deptno =10 )and deptno = 20 )and deptno in (10,20,30);

select ename from emp 
where mgr = (select mgr from emp
where ename ='BLAKE');

select ename from emp 
where mgr = (select mgr from emp 
where ename = 'SMITH');
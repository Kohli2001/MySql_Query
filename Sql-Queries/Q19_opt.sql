use test;

select * from emp ;

-- Logical operator 

select * from emp 
where deptno = 10 and job ='MANAGER';

select * from emp 
where sal >2000 and job = 'ANALYST'; 

select ename , sal ,mgr , hiredate 
from emp 
where hiredate<'1987-12-31' and hiredate <'1981-01-01';

select * from emp 
where empno = 7839 and job = 'PRESIDENT' and hiredate>='1981-01-01' and hiredate <='1981-12-31';


select * from emp 
where deptno = 10 or job = 'MANAGER';

select * from emp 
where deptno = 20 and deptno = 30 and job ='CLERK';

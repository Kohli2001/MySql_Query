use test;
select ename,dname
from emp left outer join dept
on emp.deptno = dept.deptno;

select * 
from emp , dept
where emp.deptno = dept.deptno;

select ename , dname 
from emp , dept
where emp.deptno = dept.deptno;



select ename, job, dname, loc 
from emp , dept 
where emp.deptno = dept.deptno and job='CLERK' and 
substr(ename , 1, 1) not in ('A','E','I','O','U');


select ename, job,dname , loc, emp.deptno as empDeptno
from emp , dept
where emp.deptno= dept.deptno and 
emp.deptno in (10,20) and emp.job='MANAGER';

select ename , job, dname , loc 
from emp , dept
where emp.deptno = dept.deptno and 
emp.job='SALESMAN' and dept.dname='SALES';

select mod(0, null);

select * 
from emp
limit 5
offset 4;

select * from emp;
SELECT * FROM emp LIMIT 1 OFFSET 4;
delete from emp  limit empno;













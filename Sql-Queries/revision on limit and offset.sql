use test;


delete  from emp
where empno = (select empno from emp
order by empno desc
limit 1 offset 2);

select * from emp;

select datediff(now(), '1999-12-16')/365;

select *
from emp
where hiredate>(select hiredate from emp
order by hiredate
limit 1)
order by hiredate 
limit 1;


select distinct *
from emp
order by sal desc
limit 3;



select e1.ename 
from emp e1, emp e2
where  e2.hiredate>(select add_months(min(e1.hiredate) , 60) from emp );






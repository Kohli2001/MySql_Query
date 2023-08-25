use test;

create user 'scott'
identified by 'tiger';


CREATE USER 'scott'@'localhost' IDENTIFIED BY 'tiger'; 

select reverse(sal || '') from emp;

select substr(job ,  1, round(length(job)/2)) from emp  ;

select * from emp;
select ename from emp where substr(ename , 1,1 );

SELECT *
FROM emp
ORDER BY sal DESC
LIMIT  1 OFFSET 4;

SELECT *
FROM emp
WHERE sal = (
    SELECT DISTINCT sal
    FROM emp
    ORDER BY sal DESC
    LIMIT 1 OFFSET 4
);


select * from emp;

select * from emp where (select max(sal) limit 5 );

select e.ename as ename, m.ename as manager , m1.ename as managersManager , d.loc
from emp e , emp m ,emp m1 , dept d 
where e.mgr = m.empno and m.mgr = m1.empno and m1.deptno = d.deptno and d.loc='NEW YORK';

update emp set ename=null where empno in (select empno from emp);

select sal, count(*) from emp 
group by sal 
having count(sal)>1;

SELECT DAYOFWEEK('2023-08-24'); -- //5 it means frieday

select dayname('2023-08-24');

select dayname('1947-08-15');

select dayname('1999-12-16');

select dayname('1999-01-31');  --  //these all will give Day of given data

select dayname('2001-02-05');

select * from dept;
select * from emp;

select dayname('1869-10-02');




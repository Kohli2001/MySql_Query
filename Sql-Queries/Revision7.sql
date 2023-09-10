use test;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'tiger';

select * from emp;

select ename , dname 
from emp cross join dept  order by ename;

-- . WAQTD ename and dept name for all the employees .

select ename , dname 
from emp , dept
where emp.deptno = dept.deptno;

-- WAQTD ename and loc for all the employees working as 
-- Manager

select ename, loc 
from emp , dept
where emp.deptno = dept.deptno and emp.job='MANAGER';

-- AQTD ename , sal and dname of the employee working as 
-- Clerk in dept 20 with a salary of more than 1800

select ename , dname, sal
from emp inner join dept
on emp.deptno  = dept.deptno and emp.job='CLERK' and emp.deptno= 20 and emp.sal>1800;

-- wAQTD ename deptno , dname and loc of the employee earning 
-- more than 2000 in New York .

select ename, deptnocustomer , dname, loc 
from emp inner join dept
where emp.sal>2000 and loc='NEW YORK';

select * from emp;

create table ranjan(name  varchar(20) , id int(4) primary key, DOB date ); 

insert into ranjan values('Ranjan KUMAR' , 1002, '1997-02-05');
update ranjan set DOB='1997-02-15' where id=1002;

select * from ranjan
where id = 1002;



select * from ranjan;

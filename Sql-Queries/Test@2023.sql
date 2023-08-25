use test;
select * from emp;

select * from emp where max(sal) limit 5;


create table Student_table (student_name varchar(20)  , DOB date);
select * from Student_table;

insert into  student_table values('Ramesh' , '1995-07-20');
insert into student_table values('Suresh' , '1997-08-12');
insert into student_table values('Mahesh' , '2003-07-15');

select student_table.* , datediff(CURDATE() ,DOB)/365 as age from student_table where datediff(CURDATE() ,DOB)/365>21;

select * from student_table;


SELECT ename , sal 
FROM emp
WHERE  substr(ename , 1, 1)  in ('A','E','I','O','U') AND substr(ename , -1, 1) not in ('A','E','I','O','U');

update emp set sal=null;
UPDATE emp SET sal = NULL;



select e.ename , m.ename , m1.ename 
from emp e , emp m , emp m1 ,dept d
where e.mgr=m.empno and m.mgr = m1.empno and e.deptno=d.deptno and  d.loc='NEW YORK';


select * from emp e , emp e1
where e.deptno=e1.deptno and sal=sal;


select * from emp 
where sal in(select sal from emp
group by sal
having count(sal)>1);


select left('Kamlesh' , length('Kamlesh')/2 );  -- //first half

select right('kamlesh' , length('kamlesh')/2);   --   //last half



SELECT MID('Hello World', 7, 3) AS extracted_substring;

select mid(ename , length(ename)+1/2, length(ename)-1);


SELECT * FROM emp WHERE empno % 2 = 0;







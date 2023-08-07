use test;


-- case 2

select * from emp ;

select * from department;


select dname from department
where  depnto in (select depnto from emp 
where job = 'CLERK'); 


select * from department 
where depnto in (select depnto from emp where sal>2000);

select dname , loc from department
 where depnto in (select depnto from emp where job ='SALESMAN'); 
 
select ename from emp 
where deptno in (select depnto from department where loc = 'NEW YORK');

-- //how two diiferent deptno depnto are interconnected to each other and i want to chnage it in above query

select * from emp 
where deptno in (select depnto from department where dname = 'SALES');    

select ename , sal from emp 
where deptno in (select depnto from department where loc in ('NEW YORK' , 'DOLLAS'));

select dname , loc from department 
where depnto in (select deptno  from emp where mgr is not null and sal is not null ) 
	 and   dname ='ACCOUNTING';


select * from emp 
where deptno in (select depnto from department where dname in ('SALES', 'RESEARCH'));


select * from department
where depnto in (select deptno from emp where sal>2000 and job in ('CLERK', 'MANAGER') and deptno in (10,30));


select * from department 
where depnto in (select deptno from emp where sal>2000 
and sal<(select sal from emp where ename = 'KING'));


select * from department 
where depnto in (select deptno from emp where job = (select job from emp 
where ename = 'MILLER' ) and 
job = (select job from emp where ename = 'SCOTT')
and hiredate > (select hiredate from emp where ename = 'JAMES') and sal>3000);


select dname , loc from department 
where depnto in (select deptno from emp where sal is not null and substr(ename , 1,1) not in ('A','E','I','O','U') 
and loc = 'CHICAGO');




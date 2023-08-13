use test;


-- operator Revisions -- 

select job from emp; -- // total jobs 
select distinct job from emp; -- //all type of jobs only it doest repeat 


select emp.* , sal*12 as annunalSal , sal*6 as Halftermsal from emp ;

select ename , job, sal, hiredate from emp 
where hiredate = 1981-12-03;

select * from emp 
where mgr = 7566;

select emp.* , sal+sal*10/100 as hike from emp 
where sal+sal*10/100 >2000;


select ename , deptno from emp 
where deptno<>10;

select ename, sal , hiredate from emp
where hiredate= 1980-12-12;

select hiredate , ename from emp;


select ename , hiredate from emp
where hiredate>1981-12-03;

select ename , hiredate from emp 
where hiredate<1985-02-10;

select * from emp 
where hiredate >=1981-01-01;

select ename , hiredate from emp 
where hiredate <01-01-1980;

select * from emp where hiredate <31-12-1985;


select ename , sal , hiredate from emp 
where hiredate <18-12-1980;  

select * from emp 
where empno = 7839 and job = 'PRESIDENT' and hiredate>= 01-01-1987 
and hiredate<=31-12-1987 and deptno = 10;


select * from emp 
where job in ('CLERK' , 'ANALYST') AND deptno in(30,40,50);
 
select emp.* , sal*12 as annuanlSal from emp
where sal*12 >30000 and job in ('PRESIDENT' , 'ANALYST' ) and 
deptno in (10,20) and mgr in (7788, 7839)
and hiredate>31-12-1987 and comm<400;
 
 



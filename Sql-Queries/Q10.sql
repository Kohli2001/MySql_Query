use test;

-- 	//--------date function-----------

select sysdate() ; 
select current_date();

select ename ,hiredate, adddate(hiredate, 3) as add12_in_Hiredate from emp; 
select ename , hiredate, PERIOD_ADD (12) from emp ;
 select months_between(current_date , hiredate) ;
 
 -- SELECT ename, hiredate, DATE_ADD(hiredate, INTERVAL 3 MONTH) from emp; // SELECT DATE_ADD('2023-07-25', INTERVAL 3 MONTH);
 SELECT LAST_DAY('2023-07-25') AS LastDate;

SELECT ename , hiredate ,LAST_DAY(hiredate) AS LastDaten from emp;

select extract(month from current_date()) as month; 

select ename , hiredate , extract(month from hiredate) as hire_month from emp;

select ename, hiredate , extract(year from hiredate) as hire_year from emp
where ename='ALLEN';


-- Question
select ename , hiredate , extract(year from hiredate) as Hire_year from emp 
where ename in ('KING', 'SCOTT') and 
deptno in(10,20,30)and 
length(ename) = 4;

select ename , hiredate , extract(month from hiredate) as hire_month from emp;



 

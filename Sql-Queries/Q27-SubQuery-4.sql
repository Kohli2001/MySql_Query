use test;

select * from emp;

-- case 4 on subQuery 

select ename from emp
where sal>ALL(select sal from emp 
where job = 'CLERK');



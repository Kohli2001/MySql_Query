use test;

select * from emp;

    --  subQuery part 2
    
    select *
    from emp 
    where substr(ename , 1) = 'A' and job = (select job from emp where ename = 'BLAKE');
    
    
    select ename , hiredate from emp 
    where hiredate > 1980-12-31 and 
    hiredate < (select hiredate from emp where ename = 'KING'); 
    
    
    select ename 
    from emp where sal > (select sal from emp where ename = 'MILLER') and 
                   sal< (select sal from emp where ename = 'ALLEN');
                 
                 
                 
select ename , comm, deptno from emp 
where comm  is not null and deptno = (select deptno from emp where ename = 'ALLEN' ) and 
hiredate < (select hiredate from emp where ename = 'SCOTT'); 



select ename , sal , job 
from emp 
where sal*12 > (select sal*12 from emp where ename = 'SMITH' ) and 
	  sal*12 < (select sal*12 from emp where ename ='KING');                
                   
                   
                   
select ename 
from emp 
where job = (select job from emp where ename = 'JAMES') and 
sal > (select sal from emp where ename = 'ADAMS' ) and 
job = (select job from emp where ename = 'MILLER') and
hiredate > (select hiredate from emp where ename = 'MARTIN') and 
comm > (select comm from emp where ename = 'WARd' );


select count(*) 
from emp 
where sal >(select sal from emp where ename = 'SMITH' ) and 
      sal< (select sal from emp where ename = 'MARTIN') and 
      hiredate > (select hiredate from emp where ename = 'JAMES' ) and 
      ename like '%S' and 
      sal is not null;
      
      
      
      
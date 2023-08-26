use test;



-- //to fetch the data from the last 


select * from emp
 order by empno desc
 limit 3 offset 2;
 
-- //to fetch the data from the first 

select * from emp limit 3;

select * from emp ;


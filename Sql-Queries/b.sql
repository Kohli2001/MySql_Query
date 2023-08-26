use test;

select * from emp;

select * from emp  limit 1 offset 2;

select * from emp  order by empno desc  limit 2;   -- //Last 2 record from emp table

select * from emp limit 5; --  ------------------------>>//first 5 record from emp table

select * from emp limit 2,3; --  //it means leave first 2 row then print 3 row continue




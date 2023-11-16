use test;



-- date function-- 

select ename , hiredate from emp where subdate(hiredate , INTERVAL 3 year); 

select ename ,timestampdiff(year ,hiredate, now() ) as exprience
from emp
where timestampdiff(year ,hiredate, now()) >41;

select ename , hiredate , timestampdiff(year ,hiredate, now() ) as exprience from emp;--   // givng exprience in year

select ename , hiredate, datediff(NOW(),hiredate) from emp;  -- //just difference

select ename , hiredate, timestampdiff(year , hiredate, now()) as exprince 
where timestampdiff(now() , hiredate)>41;


select datediff(now(),'1980-01-01');
select  timestampdiff(now() , hiredate) as exp;

select dayname('1980-01-01');

SELECT DAYOFWEEK (dayname('2023-08-24')); -- //5 it means frieday


select dayname('2023-08-24');


select dayname('1947-08-15');

select dayname('1999-12-16');

select dayname('1999-01-31');  --  //these all will give Day of given data

select dayname('2001-02-05');


select * from dept;
select * from emp;

select dayname('1869-10-02');

select dayname('2000-11-10');   -- //FriDay

select dayname('1999-12-16');    -- //thursday










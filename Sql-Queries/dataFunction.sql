use test;


-- date function-- 

select ename , hiredate from emp where subdate(hiredate , INTERVAL 3 year); 

select ename , hiredate , timestampdiff(year ,hiredate, now() ) as exprience from emp;--   // givng exprience in year

select ename , hiredate, datediff(NOW() , hiredate) from emp;  -- //just difference

select ename , hiredate, timestampdiff(year, hiredate , now()) as exprince 
where timestampdiff(now() , hiredate)>41;

select datediff(now() , '1980-01-01');

select dayname('1980-01-01');











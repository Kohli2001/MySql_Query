use test;


-- //.........substring()...........//


-- select substr('kamlesh' , 1, 3) from dual;

-- select ename , substr(ename , 1, 3) from emp; 

-- select ename, substr(ename, -1, 2) from emp;


-- select ename , substr(ename , -4)  from emp;

-- select ename, substr(ename, 3) from emp;
-- select ename , substr(ename, 1, 4) from emp;

-- select ename , substr(ename , 1 , 3) from emp; -- first three alphabets


-- select ename , substr(ename , 1 , length(ename)/2) from emp; -- first half of the  emp

-- select ename, substr(ename , length(ename)/2)
-- from emp;  --half of the last digit


 -- select reverse(job) , reverse(substr(job, 1 , 3)) from emp; 

-- select ename , substr(reverse(job) , length(ename)/2+1) from emp;

-- select ename , substr(ename , -2) from emp 
-- where length(ename) =4; --  last 2 digit if ename contains exactly 4 alphabets 

-- second methods  

-- select ename, substr(ename , -2 )
-- -- from emp 
-- --  where ename like '____';


-- select substr(reverse('SUMAN') , 1 , 2) 
-- from dual;  --input SUMAN O/p - NA

-- select   substr( reverse(upper('amruth')) , 3, 2)
-- from dual;
 
 
-- 	select ename , job , hiredate  from emp 
--     where hiredate>1980-12-31 and job in ('CLEARK ' , 'SALESMAN') and deptno in(10,20,30)
--     and substr(reverse(ename) , 4, 1) in ('S', 'P') ; 









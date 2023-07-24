use test ;
select reverse('kamlesh') from dua;--

select concat('Hi ' , 'Swetha mam')   from dual;-- 

select  ename , length(ename) - length(replace(ename, 'A' , ''))from emp;  -- question 2 -- 

select 'kamlesh',  length('kamlesh') - length(replace('kamlesh' , 'h' , '')) from dual ; -- 

select concat('Hi ' , ename ) from emp; -- 

select concat(concat( concat(concat('Hi ' , ename),' Your salary is hike 10%'),sal+sal*10/100))  as hike from emp;--

select trim(leading 'k' from 'kkamlesh ') from dual; 

select trim(leading 'A' from ename) from emp;



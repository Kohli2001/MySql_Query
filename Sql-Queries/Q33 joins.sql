use test;

select * from emp;


-- Natural joins


select ename , dname 
from emp natural join department;

select ename ,tname
from emp natural join trainer;

select ename , dname 
 from emp natural join department;  -- // it is giving  as the cross  joins only in each case 
 
 
 
 
 
 
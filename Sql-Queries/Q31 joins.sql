use test;



-- Outer join--->> it is used to give the all the matching and unmatching records 

-- left outer join--->>>it is used to give all the matching records from both the tables and unmatching records from left table -- 





select * from  emp , department;

select ename , dname
from emp left outer join department
on emp.deptno = department.depnto;

-- right outer join---->> it is used to give all the matching records but also unmatching records from right table 


select ename, dname
from emp right outer join department
on emp.deptno = department.depnto ;






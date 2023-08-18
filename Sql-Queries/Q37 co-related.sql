use test;



-- ..........CO-RELATED SubQuery..........

select e1.sal from emp e1 
where 5 = (select count(distinct e2.sal)  from emp e2 
			where e1.sal<=e2.sal);
            
select   distinct e1.sal from emp e1 
where (select count(distinct e2.sal ) from emp e2 where e1.sal<=e2.sal) in (1,2, 4,5,6) order by sal desc;


select e1.sal from emp e1 
where 8 =  (select count(distinct e2.sal) from emp e2  where e1.sal<=e2.sal );


select e1.sal from emp e1 
where (select count(distinct e2.sal) from emp e2 where e1.sal<=e2.sal ) in (3,4,5) 
union 
select e1.sal from emp e1 
 where (select count(distinct e2.sal ) from emp e2 where e1.sal>=e2.sal ) in (4,5,6) order by sal desc ;
 
 
 select  e1.sal from emp e1 
 where 5 = (select count(distinct e2.sal) from emp e2 where e1.sal<=e2.sal )
 union 
 select e1.sal from emp e1 
 where 4 = (select count(distinct e2.sal ) from emp e2 where e1.sal>=e2.sal);
 
 
select ename ,dname
from emp  full  join dept 
on emp.deptno = dept.deptno;
 
 
 
            
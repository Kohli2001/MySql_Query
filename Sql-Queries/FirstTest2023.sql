use test;


-- Q1)  WA SQL Query to find those employees who recieve higher salary than the employee number 7756

select ename from emp
where sal>(select sal from emp where empno = 7756);   



-- Q2)WA SQL Query to find those employee whoes salaray matches the lowest salary of each dept
select ename from emp 
where sal in  (select min(sal) from emp group by deptno);                              --  ans:>>3 row selected
            
--   Q3) Display details of employee who are earning same salary in same deptartment

select * from emp 
	where sal  in (select sal from emp group by sal  having count(*)>1);
            
--   Q4)Display ename who is reporting to SMITH manager's manager
   
     select ename   from emp 
     where mgr in (select empno from emp where ename = 'SMITH' and  empno in (select mgr from emp));
     
    --  Q5)Dsiplay employee details  , if employee works in sales department or working in NEW YORK or DALLAS 
    
    select * 
    from emp
    where deptno = (select deptno from dept 
					where dname = 'SALESMAN' or loc in ('NEW YORK' , 'DALLAS'));  -- ans:>> now rows selected

-- Q6)Display all the deptno and No of employees working in the deptno ,
-- if Total no of employees working for the particular department must be more than 3

   select deptno , count(*) as noOfEmployee
   from emp 
   group by deptno 
   having count(*)>3;
	

-- Q7)WAQTD employee name with the first latter captilised and all other letters in lowercase , 
-- and the length of the names , for all employees whoes name starts with J, K or M .give each column 
--       an appropete  name (aliseed it) .sort the result according to enames

 select initcap(ename) as ename , length(ename)  as totalLength from emp 
 where substr(ename , 1, 1) in ('J','K', 'M')  order by ename;  -- ans// 5 rows selected
 
 -- Q8)Display details of employee along with exprience of the employee and 
--  sort according to the last employee who got hired should be display first

select emp.* , datediff(now() , hiredate) as Exprience  
from emp 
where hiredate order by hiredate desc;

-- Q9)Display no of employees working in each department if atleast two clerk working in each department

select count(*) from emp
group by deptno 
having count(job)>=2;

-- Q10)Display the day of date  25-feb-2018.

	select dayname('2018-02-25');

         -- // SUNDAY



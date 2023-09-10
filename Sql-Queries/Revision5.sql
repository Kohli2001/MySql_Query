use test;

select * from emp;

-- WAQTD Ename and Manager's name for all the employees .
select e.ename , m.ename as managerName
from emp e , emp m 
where e.mgr=m.empno ;

-- WAQTD Ename and Manager's name for all the employees .

select e.ename , m.ename 
from emp e , emp m
where e.mgr = m.empno;


-- WAQTD Ename , sal along with manager's name and 
-- manager's salary for all the employees .

select e.ename , e.sal as EmploSal , m.ename  as Manager, m.sal as ManagerSal
from emp e , emp m
where e.mgr = m.empno ;

-- WAQTD ename , manager's name along with their deptno
-- If employee is working as clerk 

select m2.ename 
from emp e , emp m1 , emp m2,  dept d
where e.mgr=m1.empno and m1.mgr=m2.empno and m2.deptno = d.deptno and d.loc='DALLAS';
     

select 




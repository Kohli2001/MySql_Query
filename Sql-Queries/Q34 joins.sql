use test;

-- SELF JOINS


select e.ename , m.ename  as manager
from emp e , emp m 
where e.mgr = m.empno;


select e.ename , e.deptno , m.ename as manager
from emp e , emp m 
where e.mgr = m.empno and e.deptno in (10,20);


select e.ename , m.ename as manager , m.job 
from emp e , emp m 
where e.mgr = m.empno and m.job = 'MANAGER';


select e.ename , m.ename as manager ,e.hiredate as empHired , m.hiredate as MnagerHired 
from emp e , emp m 
where e.mgr = m.empno and e.hiredate <m.hiredate;

select e.ename , m.ename as manager, m1.ename  as mangersManager
from emp e , emp m , emp m1
where e.mgr = m.empno and m.mgr  = m1.empno ;


select e.ename , m.ename as manager , m1.ename  managersManage , m2.ename  managermangersmanagers
 from emp e , emp m , emp m1 , emp m2
where e.mgr = m.empno and
 m.mgr = m1.empno and 
 m1.mgr = m2.empno;
 
 
select e.ename , m.ename , m1.ename , m2.ename 
from emp e , emp m , emp m1 , emp m2
where e.mgr = m.empno and 
m.mgr = m1.empno and 
m2.mgr = m2.empno and m2.job ='MANAGER' and m2.deptno in (10,20);


select e.ename , m.ename as manager
from emp e , emp m 
 where e.mgr = m.empno and e.sal>(select sal from emp 
 where ename ='SMITH');
 
 
 

use test;


-- Revision-- 
select e.ename , m.ename , m1.sal 
from emp e , emp m , emp m1
where e.mgr = m.empno and e.sal>m.sal and substr(m.ename , -1 , 1 ) in ('A','E','I','O','U');



select e.ename , e1.job, e2.sal, e3.deptno , e4.comm ,m.ename , m1.job , m2.deptno , m3.sal, m4.comm 
from emp e, emp e1, emp e2, emp.e3, emp e4 , emp m , emp m1 , emp m2, emp m3, emp m4
where e.mgr = m.empno and m.mgr = m1.empno and m1.mgr = m2.empno and m2.mgr = m3.empno and m3.mgr = m4.empno and 
e4.comm>m4.comm and e3.deptno = 10 and m1.job = 'MANAGER';

select e.ename , m.ename , m.job 
from emp e , emp m
where e.mgr = m.empno and m.job = 'MANAGER';
 
 
 select e.ename , e1.deptno , m.ename 
 from emp e , emp e1 , emp m
 where e.mgr = m.empno and e.deptno in (10,20);
 
select e.ename , m.ename
from emp e , emp m 
where e.mgr = m.empno;





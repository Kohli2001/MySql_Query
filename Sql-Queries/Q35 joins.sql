use test;




-- self joins 



select e.ename,e.job,e.sal,e.deptno,e.comm,m.ename,m.job,m.sal,m.deptno,m.comm
from emp e, emp m
where e.mgr=m.empno  and e.comm > m.comm and e.deptno=10 and m.job='MANAGER' and e.hiredate < m.hiredate;



select e.ename , m.ename , m1.ename 
from emp e, emp m , emp m1
where e.mgr = m.empno and m.mgr = m1.empno ;


-- //WAQTD who all r reporting to smith's managers manager by using joins  ?

select m1.ename
from emp e , emp e1 , emp m , emp m1
where e.mgr = m.empno and m.mgr = m1.empno and e.ename  = 'SMITH' and e1.mgr=m2.empno;


select e.ename, m.ename
from emp e , emp m  , emp e1
where e.mgr = m.empno 
and e1.ename='SMITH' and e.sal>e1.sal; 



select e.ename , m1.ename , e1.sal
from emp e , emp m , emp m1 , emp e1 , emp e2 
where e.mgr = m.empno and m.mgr = m1.empno and  e1.ename = 'SCOTT' 
and e1.sal>m.sal and  e2.ename = 'KING' and m.sal<e2.sal;

select  e.ename , m.ename , d.dname
from emp e , emp m , department d 
where e.mgr = m.empno and 
d.deptno = e.deptno;

	
select e.ename , m.ename , d.dname  , d1.loc
from emp e , emp m , department d , department d1
where e.mgr = m.empno and e.deptno = d.deptno and m.deptno = d1.deptno;

ALTER TABLE department RENAME TO dept;



select e.ename , m.ename , d.dname , d1.loc
from emp e join emp m 
on e.mgr = m.empno 
join department d 
on e.deptno = d.deptno 
join department d1 
on m.deptno = d1.deptno ;


ALTER TABLE department CHANGE depnto  deptno int;




select e.ename , d.dname , m.ename , d1.dname 
from emp e , emp m , emp m1 , department d, department d1, department d2
where e.mgr = m.empno and m.mgr = m1.empno and e.deptno = d.depnto
and m.deptno = d1.deptno and m1.deptno = d2.deptno and d.loc = 'DALLAS';






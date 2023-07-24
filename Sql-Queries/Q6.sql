use test;


-- //.........replace()...........//

-- select replace('kamlesh' , 'a' , 'j') from dual; 

-- select replace(ename, 'A', 'k')from emp;

-- select ename , length(ename)- length(replace(ename, 'A' , '')) as lengthOfName
-- from emp;

-- select ename , length(ename) - length(replace(ename , 'H', ''))
-- from emp;

-- select ename ,job , replace(job, 'K' , 'MMMMM')
-- from emp

-- select ename , job , replace(job , 'A' ,  'MMMMMMMM' )from emp;

-- select ename , replace(ename , 'A' , '')from emp 
-- where deptno in(10,20); -- // removing A from ename 


-- select length('Kamlesh') - length(replace('kamlesh' ,'h' , '' )) from dual;

-- select ename , length(ename)- length(replace(ename , 'H' , '')) from emp;


-- select ename , job , replace(job , 'D' , 'Z')
-- from emp 
-- where mgr in (7788, 7839);

select ename , replace(replace(replace(replace(replace(ename , 'A', ''),'E' , ''), 'I', ''), 'O', ''), 'U', '')
from emp;







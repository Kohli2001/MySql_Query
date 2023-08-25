use test;

select ename , sal from emp 
where sal= (select sal from emp 
where ename ='SMITH');


use test;

select * from emp1;
UPDATE emp1
SET ename = NULL;

update emp1 set  ename = null ;
SET SQL_SAFE_UPDATES = 0;

SELECT CONCAT(UPPER(SUBSTRING(job, 1, 1)), LOWER(SUBSTRING(job, 2))) AS initcap_name
FROM emp1;

select concat(upper(substr('kamlesh kumar kohli' , 1) ) )as initcap;

select concat(concat (concat( 'Hi ' , ename),' Your salary is hike upto 10% '), sal+sal*10/100) from emp;


SELECT TRIM ('.,! Hello, World! .,!') AS trimmed_string;

SELECT TRIM('.,! ' FROM ',z Hello, World! .,!') AS trimmed_string;






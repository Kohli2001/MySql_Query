use test;

create table tery ( name  varchar(10) unique , phone integer ); 

insert into dummy values('Swetha mam');

ALTER TABLE dummyname
CHANGE name newName INT;


insert into dummy values('null');
select * from dummy;

drop table tery;

CREATE DATABASE database_name;
DROP DATABASE database_name;
select * from dummy;
rollback;


SELECT CHAR_LENGTH('KAMLESH') AS name_length ;

SELECT LOCATE('h', 'KAMLESH') AS position;

SELECT CEIL(4.25) AS ceil_value;

SELECT POW(2, 3) AS power_result;

SELECT RAND(9999) AS random_number;

SELECT emp.ename, dept.dname
FROM emp FULL JOIN dept ON emp.deptno = dept.deptno;




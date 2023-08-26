use TEST;




select rpad('_____Hi' ,6,'');
select lpad('Hello___' , 6, '');


select translate('JSPIDER' , 'JK', 'QZ');

select 'Kmaleshr'  
where 'Kamleshr' like '%@r%' escape '@' ;

SELECT REPLACE(REPLACE('JSPIDER', 'J', 'Q'), 'R', 'Z') AS translated_string;

-- REGEXP_SUBSTR('JSPIDER' , 'JK', 'QZ',1,1);

SELECT REGEXP_REPLACE('JSPIDER', 'J|K', 'QZ', 1, 0, 'i') AS translated_string;

select regexp_replace('KAMLESH' ,' AH', 'EV',1,0) as trimed ;

select replace(replace('KAMLESH' , 'A','Q' ),'H', 'Z');

select ename ,round(length(ename)/2)-3 from emp;
select substr(ename,round(length(ename)/2)-2) from emp;

select substr(ename,round(length(ename)/2)) from emp;

select  substr(ename,round(length(ename)/2)) ,round(length(ename)/2) from emp;

select  reverse(substr('SUMAN' , -2, 2));

select   reverse(substr('AMRUTH', -4, 2));

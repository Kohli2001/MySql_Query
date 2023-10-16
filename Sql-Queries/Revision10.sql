use test;


create table pra(id int(4) not null, name varchar(20) not null, address varchar(25) not null);

insert into pra(id,name,address) values(1001,'Kamlesh','hardia');

insert into pra values(1002, 'kamlesh', 'begusarai');

insert into pra values(1003,'ranjan', 'bihar');

insert into pra values(1004, 'ramana', 'bihar');


insert into pra(id, name , address) values(1001, 'kamlesh', 'begusarai');

insert into pra values(1002, 'ramesh','Bihar');


select * from pra;

delete from  pra  where id=1003;

update pra set name='Rajesh' where id=1001;

alter table pra 
add primary key(id);

delete from pra where id=1001;

create table exam(id int(4), name varchar(15), center varchar(20));

alter table exam
add primary key(id);

select * from exam;

insert into exam values(1001, 'UPSC', 'Patna');

insert into exam values(1002,'BPSC', 'delhi');

insert into exam values(1004,'UPPSC', 'UP'); 


select * from exam;

delete from exam  where id=1003; 

update exam set center='delhi' where id=1001;

update exam set  







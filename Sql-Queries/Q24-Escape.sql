use test;
SELECT 'This is SQL Exercise, Practice and Solution';

select 5, 10,24;

select 'kamlesh_78@gmail.com' like '%@_%' escape '@';

create table email(name varchar(20) , email varchar(25) primary key );

select * from email;
insert into email values('kamlesh' , 'kamlesh_7@gmail.com');

insert into email values('Rajesh' , 'rajesh_16@gmail.com');

insert into email values('ajay' , 'ajay_17@gmail.com');
insert into email values('Sukhit' , 'sukhit22337@gmail.com');
insert into email values('kamlesh' , 'kamlesh2001@gmail.com');

select * from email
where email like '%@_%' escape '@';

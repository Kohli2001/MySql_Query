use test;


create table doctor(id int(4) primary key , dname varchar(20) not null , field varchar(20) , phone  int(10)check(length=10) );


insert into doctor values(0007 , 'Dr.N.K Singh ', 'General Physicial', 98883721);


select * from doctor;

create table patient(id int (4) , pname varchar(20) , problem varchar(25), Address varchar(51) );

insert into patient values(0002, 'Mr.gyan yadav' , 'appendictes Problems' , 'begusarai bihar -851131');

insert into patient values (0019, 'Mr. Sushil babu', 'Factures bones' , 'Rajaura begusarai bihar -851131');

select * from patient;






alter table patient add foreign key (id) references doctor (id);  

ALTER TABLE patient
ADD FOREIGN KEY (id) REFERENCES doctor(id);


drop table staff;

truncate table try;

select * from try;

-- rename table try to Empaty;

RENAME TABLE try TO Empaty;

rename table Empaty to NullRecords;








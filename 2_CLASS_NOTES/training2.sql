use college;

create table data(ID int primary key ,Name varchar(30),Marks int);

insert into data(Roll_no,Name,Marks) values(4,"Bemmi",79);

Alter table data add address varchar(50);
alter table data drop address;
alter table data rename column ID to Roll_no;
Describe data;

select * from data;

select Sum(Marks) from data;
select AVG(Marks) from data;
select Max(Marks) from data;
select min(Marks) from data;
select Count(Name) from data;
select date_format(curdate(),'%y/%m/%d') as todaydate;

set sql_safe_updates=0;
alter table data add today_date date;
update data set today_date=curdate();
insert into data values(6,'dinesh',80,'2025-07-24');

alter table data drop today_date;
-- insert into data value(5,'ajay',78,'2025');

create table Ld(
Roll_no int ,Name varchar(30),
Foreign key(Roll_no) references data(Roll_no));

select * from data;
select * from Ld;
describe ld;


create table Pt1(roll int,name varchar(20),cname varchar(20));
create table pt2(sno int ,cname varchar(20),cloc varchar(20));

insert into pt1 values(1,"a","tcs") ,(2,"b","noo"),(3,"c","mic"),(4,"d","mpc"),(5,"e","wipro");
insert into pt2 values(1,"tcs","kosatlau") ,(2,"noo","maddipadu"),(3,"mic","ongole"),(4,"mpc","chennai"),(5,"wipro","kadapa");

select * from pt1;
select * from pt2;
-- it is  inner join 
select pt1.roll,pt1.name,pt1.cname,pt2.cloc from pt1 inner join pt2 on pt1.cname=pt2.cname;

select pt1.roll,pt1.name,pt1.cname,pt2.cloc from pt1 join pt2 where pt1.cname=pt2.cname;












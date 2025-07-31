use naveen;
create table details (empid int primary key ,name varchar(20),department varchar(20) ,salary int);

insert into details values(1,"alice","hr",50000),(2,"bob","it",60000),(3,"carol","it",75000),(4,"david","finance",70000),(5,"eve","hr",52000);

select name,department from details  order by salary limit 3;

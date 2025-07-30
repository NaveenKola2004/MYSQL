# SQL
-Sql have 5 catogries 
- DDL,DML,DQL,DCL,TCL

## DDL

- Data definition language
- CRUD operation 
#### keywords
- Create 
- Ulter
- Rename
- Drop
- Truncate

## DML

- Data manuplication language
#### keywords

- UPDATE
- INSERT
- DELETE

## DQL

- Data Query language

#### keywords

- Select

## DCL

- Data control language
#### keywords

- grant
- revock

## TCL

- Tranction control language
#### keywords

- commit
- roll back 
- begin


### ALTER

```sql

alter table table_name add column name along with the datatype mention after or before in this

```

```sql 
alter table table_name drop column_name;

```

```sql
alter table table name rename column old_column_name to new_column_name

```
```sql

alter table table_name rename to new_table_name;

```
## Rename the database

```sql

mysqldump -u root -p old_db_name > old_db_name.sql

CREATE DATABASE new_db_name;

mysql -u root -p new_db_name < old_db_name.sql

DROP DATABASE old_db_name;

```

- to update the entair column

```sql
update table_name set column_name =value ;
```

```sql

set = sql_safe_update=0 or 1;
```

# AND, OR, IN
- this are the operators;


# BETWEEN,LIKE,DESC,like,ordered by,case,group by,limit
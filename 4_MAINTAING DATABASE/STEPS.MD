## It has some number of steps to maintaing the database

# Step - 1

- Creating the Database

### Syntax
```sql
create database DATABASE_NAME;
```
### Example

```sql
create database college;
```
- Hear we are creating the database as the college

# Step - 2

- Using the database

### Syntax

```sql
Use database_name;
```

### Example 

```sql 
Use college;
```

# Step - 3

- Creating the table

### Syntax

```sql 
create tabel Table_name(column1 datatype,column2 datatype,.........);
```

### Example
```sql
create table Student_info(Roll_no int,Name varchar(35));
```

# Step - 4 
- Inserting the data into table
### Syntax

```sql
Insert into Table_name values(DATA)
```
### Example

```sql
Insert into Student_info values(18,"Naveen");
```
- Inserting the single data value
### Example 2

```sql
Insert into Student_info values(18,"Naveen"),(37,"Krishna");
```
- Put the ',' between the each data between the data's
# Step - 5
- Print the overall Data in the table 

### Syntax
```sql
Select * from Table_name;
```

### Example

```sql
Select * from Student_info;
```

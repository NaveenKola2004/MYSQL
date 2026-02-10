# DATABASE BASICS, KEYS & CONSTRAINTS (FROM SCRATCH)

## 1. What is a Database? (Plain English)
A database is a well-organized digital cupboard.
Instead of random files, data is:
- Structured
- Searchable
- Secure
- Fast to access

A relational database stores data in tables.
Tables are connected (related) to each other using keys.

---

## 2. Table, Row, Column (Core Basics)

### Table
A table is like an Excel sheet.
It stores data in rows and columns.

### Row (Record / Tuple)
One complete entry in a table.
Example: one student’s full information.

### Column (Field / Attribute)
One type of data.
Example: name, age, email.

### Example (Text Representation)
Table name: STUDENTS

Columns:
- id
- name
- age
- email

Sample Row:
- id: 1
- name: Ravi
- age: 21
- email: ravi@gmail.com

Interview trap:
A table is a **logical structure** (physically stored on disk, logically accessed).

---

## 3. Schema (Students Always Fumble This)
A schema is the blueprint of a database.

It defines:
- Tables
- Columns
- Data types
- Constraints

Think of it as:
Rules of the house before people move in.

---

## 4. Data Types (Only Important Ones)

### Numeric
- INT → whole numbers
- BIGINT → very large numbers (IDs)
- DECIMAL → money values

### String
- CHAR → fixed length
- VARCHAR → variable length (most used)

Why VARCHAR is preferred:
It saves memory compared to CHAR.

### Date & Time
- DATE → only date
- DATETIME → date and time
- TIMESTAMP → auto-managed time

---

## 5. Keys (This Is Huge)

### What is a Key?
A key uniquely identifies a row in a table.
No keys = confusion and bad design.

---

### 5.1 Primary Key
- Uniquely identifies each record
- Cannot be NULL
- Only one per table

Real-world analogy:
Aadhaar number for citizens.

Interview answers:
- Can primary key be NULL? → No
- Can a table have two primary keys? → No

---

### 5.2 Foreign Key
- Creates relationship between tables
- Refers to the primary key of another table

Example (Text):
- STUDENTS table has student IDs
- ORDERS table stores orders linked to students
- Each order points to a valid student ID

Why foreign keys matter:
- Maintains data integrity
- Prevents orphan records

---

### 5.3 Candidate Key
- Columns that can uniquely identify a row
- One is chosen as the primary key

Examples:
- Email
- Phone number

---

### 5.4 Composite Key
- Primary key made using multiple columns

Used when:
- One column alone is not enough
- Many-to-many relationships

Example (Text):
- student_id + course_id together identify a record

---

## 6. Constraints (Rules That Protect Data)

Constraints act like security guards for your data.

### NOT NULL
Value is mandatory.
Example:
Name must always exist.

---

### UNIQUE
No duplicate values allowed.
Example:
Two users cannot have the same email.

Key difference:
- UNIQUE can be NULL
- PRIMARY KEY cannot be NULL

---

### DEFAULT
Sets an automatic value if none is provided.
Example:
Status defaults to ACTIVE.

---

### CHECK
Adds conditions to data.
Example:
Age must be 18 or above.

---

### FOREIGN KEY (Again, Very Important)
Ensures valid relationships between tables.

Interview question:
What happens if parent data is deleted?

Answers:
- CASCADE → child records deleted
- SET NULL → child reference becomes NULL
- RESTRICT → deletion blocked

---

## 7. Logical Flow (Interviewers Love This)
When designing a table, follow this order:
1. Columns
2. Data types
3. Constraints
4. Primary key
5. Foreign key

Shows clarity and real-world thinking.

---

## 8. Master-Level Table Design (Conceptual)
A well-designed student table includes:
- Unique ID
- Mandatory name
- Unique email
- Age validation
- Default status

This single design shows:
- Primary key
- Unique constraint
- Not null constraint
- Check constraint
- Default value

Interviewers nod when they see this thinking.

---

## 9. Most Asked Interview Questions (Level 1)

Q1. Difference between PRIMARY KEY and UNIQUE?
- PRIMARY KEY → unique + not null
- UNIQUE → unique but can be null

Q2. Can a table exist without a primary key?
Yes, but it’s bad design.

Q3. Why is foreign key important?
It maintains referential integrity.

Q4. Where is composite key used?
Many-to-many relationships.


# Example code Today learned one

```sql
create table Students_Data(
id int auto_increment unique,
Student_Roll_No varchar(20) primary key,
Student_Name varchar(30),
Student_phone_No varchar(15) not null unique,
Student_email varchar(30) not null unique,
Student_dept varchar(30) not null,
Student_session varchar(20) not null,
Student_Age int not null check (Student_Age>=18),
Student_Address varchar(40)
);

insert into Students_Data (
Student_Roll_No,
Student_Name,
Student_phone_No,
Student_email,
Student_dept,
Student_session,
Student_Age,
Student_Address
)
values(
"22CS019",
"KOMMI CHANDU",
"8247356189",
"Kommi797@gmail.com",
"CSE",
"A",
23,
"Ongole Maddipadu kostalu-523210"
);

select * from Students_Data;

create table Books_Destribution(
id int auto_increment primary key,
Student_Roll_No varchar(20) unique not null,
Books_Taken varchar(20) default "No",
Date_of_Taken date not null,
foreign key(Student_Roll_No) references Students_Data(Student_Roll_no)
);

insert into Books_Destribution(
Student_Roll_No,
Books_Taken,
Date_of_Taken
)
values(
"22CS019",
"NO",
"2026-02-10"
);

Select
Student_Roll_No,
Student_Name,
Student_dept,
Student_session,
(
select Books_Taken
from Books_Destribution b
where s.Student_Roll_no=b.Student_Roll_No
and b.Books_Taken="Yes"
limit 1
) As Books_Taken
from Students_Data s;

select * from Books_Destribution;

```
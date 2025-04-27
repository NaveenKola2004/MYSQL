# DATATYPES

- In sql same as other languages have datatypes
- Meaning is same for every datatype 
- Difference is the writing in sql 


# Numeric Data Types
Used for numbers (duh). But wait, there's nuance.

### Integer Types:

|Type|	Size|	Range (Signed)|
|-----|-----|-------|
|TINYINT|	1 byte|	-128 to 127|
|SMALLINT|	2 bytes|	-32,768 to 32,767|
|MEDIUMINT|	3 bytes|	-8,388,608 to 8,388,607|
|INT / INTEGER|	4 bytes|	-2,147,483,648 to 2,147,483,647|

# EXAMPLE

# Decimal Types:

|Type|	Use Case|
|-----|----------|
|DECIMAL(p,s)|	Fixed-point. Good for money. p = total digits, s = digits after decimal.|
|FLOAT|	Approximate, 4 bytes. Use when precision isn’t a big deal.|
|DOUBLE|	Approximate, 8 bytes. More precise than FLOAT.|

# String Data Types
- Used for text, strings, or anything not number-ish.

## Basic Text Types:

|Type|	Max Length|	Notes|
|-------|-------|------|
|CHAR(n)|	Fixed-length|	Good for things like state codes (CA, NY)|
|VARCHAR(n)|	Variable-length	Flexible| Most commonly used.|
|TEXT|	65,535 chars|	Use for big chunks of text. Can't index fully.|
|TINYTEXT, MEDIUMTEXT, LONGTEXT|| – for progressively bigger texts.|

# Date and Time Data Types
- Time travel? Not yet. But close.


- Type	Format	Example
```sql
DATE	YYYY-MM-DD	2025-04-22
DATETIME	YYYY-MM-DD HH:MM:SS	2025-04-22 12:30:45
TIMESTAMP	Same as DATETIME, but auto-updates to current time.	
TIME	HH:MM:SS	14:45:30
YEAR	YYYY	2025
```

# Boolean Data Type

Type	Notes
BOOLEAN or BOOL	Alias for TINYINT(1) under the hood. 0 = false, 1 = true
🪄 Other Cool Data Types

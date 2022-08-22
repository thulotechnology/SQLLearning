### Database
Database stores data in organized way.

### Types
- SQL: Structured Query Language. It store data in table. E.g: MySQL, MSSQL, Postgres, Oracle, MS Access
 
- NO SQL: Mongo DB....

### SQL
Structured Query Language, standard language for database.

### CRUD
CRUD means Create, Read, Update and Delete

### With SQL
- Data Create, Read, Update and Delete
- Database Create, View, Use & Delete
- Table Create, Read, Update and Delete
- Create Views, Store Procedure

Note: SQL is not case sensitive. A and a are same.

### MYSQL
- Popular RDBMS [Relational Database Management Software]
- Relational means data are stored in tabular format. i.e row and column.


### How to Install MYSQL
1. Download XAMPP.
2. Install XAMPP.
3. Start Mysql and Apache.

### How to Create Database
- CREATE DATABASE DatabaseName;

### How to Delete Database
- DROP DATABASE DatabaseName;

### How to View Database
- SHOW DATABASES;

### How to Use Database
- USE DatabaseName;


### WRITE SQL Query to Create and Delete Database called "school."

### TO Create:
CREATE DATABASE school;

### To Delete:
DROP DATABASE school;

### To View All Databases
SHOW DATABASES;

### To Use Database
USE DatabaseName;

### Why Database 
- Store Billions of data without any conflict.
- Easy search and crud operation.
- Security
- Multiple people access data from multiple location
at the same time.
- Logs

### Open Source
- Source Code is available for public.
- Free or Paid

### What's Inside Database
- Table[s]

### What's Inside Table
- Data

### How to Create Table
Syntax:

CREATE TABLE TABLENAME(
colname datatype,
colname datatype,
colname datatype
);

```
CREATE TABLE person(
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
phone VARCHAR(15),
address VARCHAR(50),
email VARCHAR(150),
country VARCHAR(75),
age int
);
```

### SQL WITH DATA

### TO View All Data
- SELECT * FROM tablename;
- E.g SELECT * FROM person;

### To View All Data With Condition
- SELECT * FROM tablename WHERE condition;
- E.g SELECT * FROM person WHERE country = 'USA';

## Find Max / Min / Avg / Count Value [Must Be Numeric Value]
- SELECT Functionname(colname) FROM TABLENAME
- SELECT MAX(age) FROM person;
- SELECT MIN(age) FROM person;
- SELECT AVG(age) FROM person;
- SELECT COUNT(age) FROM person;


### Find Only Different Value
- SELECT DISTINCT(colname) FROM TABLENAME;
- E.g SELECT DISTINCT(country) FROM person;


### Some Queries
- SELECT * FROM person WHERE country IN ('Nepal', 'India');
- SELECT * FROM person WHERE country != 'India';
- SELECT * FROM person WHERE country NOT IN ('India', 'USA');
- SELECT * FROM person WHERE age>19 and age <28;
- SELECT * FROM person WHERE age BETWEEN 20 AND 27; -- 20 and 27 are included

### TASK
- CREATE DATABASE bank
- CREATE TABLE staff(id, name, phone)
- Insert 4 staff
- Show all staff 


### TASK 2
- Inside Bank Database
- CREATE TABLE Customers (id, name, balance)
- Insert 5 Customers
- Find Customer Name With High Balance
- [ANS] SELECT * FROM customers WHERE balance = (SELECT MAX(balance) FROM customers)

### How to Delete Table
- DROP TABLE tablename;
- E.g DROP TABLE customer;

### How to Insert Data Into Table
```
INSERT INTO tablename(column1, column2, column3) VALUES ('val', 'val2', 'val3');
```

- E.g. INSERT INTO customers(name, balance) VALUES ('Raj', 5002.6);

- SELECT country, COUNT(*) FROM person GROUP BY country;

### ORDER BY
It is used to sort data in ascending / decending order.
- SELECT * FROM customers ORDER BY balance;
- SELECT * FROM customers ORDER BY balance DESC;


### How to Update Table Data
```
UPDATE tablename SET col1='val1', col2 = 'val2', col3 = 'val3' WHERE condition;
```
Important Note: Always Write Where Condition.
- If you don't write where condition all data will be updated.
- UPDATE customers SET name = 'Milan' WHERE id = 2;
- UPDATE customers SET name = 'Raj', balance = 5000 WHERE id =5;

### TASK
- Update balance to 0 WHERE id = 4 FROM bank database customers table;

### Add Column to Table
- ALTER TABLE tablename ADD COLUMN  columnname datatype;
- ALTER TABLE customers ADD COLUMN description varchar(100);

### How to DELETE Data
 ```
DELETE FROM table WHERE condition;
```
Important Note: Always Write Where Condition.
- DELETE FROM person WHERE id = 7;

### TASK
- Delete from customers where id = 5;


### AND OR NOT
AND - and
OR - or
NOT - ! or <>


### Encryption
- Making infromation that can't be understood by other users.

### Decryption
- Getting Original information from encrypted value.


### Create Database salesforce
```
CREATE DATABASE salesforce;
```
### Create Table custumers
- id, name, address, phone, income, description
```
CREATE TABLE customers(
id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
address VARCHAR(100) NOT NULL,
phone bigint NOT NULL,
income decimal(13,2),
description TEXT     
);

```

### Insert Data To Customers
```
INSERT INTO customers(name, address, phone, income, description) VALUES ('Kalpana Shrestha', 'USA', 15455454, 65000,'');
INSERT INTO customers(name, address, phone, income, description) VALUES ('Neetu Mulmi', 'USA', 123232323, 75000,'');
INSERT INTO customers(name, address, phone, income, description) VALUES ('Axana Chhetri', 'USA', 154554547, 65000,'');
INSERT INTO customers(name, address, phone, income, description) VALUES ('Kala Bhusal', 'USA', 154455454, 65000,'');
INSERT INTO customers(name, address, phone, income, description) VALUES ('Sudeep Baniya', 'USA', 158455454, 65000,'');
```

### Update Description of Specific ID
This will update description of customer having id 8.
```
UPDATE customers SET description = 'High Potential Customer' WHERE id = 8;
```

### DELETE Specific Customer
DROP is used in database, table
DELETE is used in table data.
This will delete information of customer having id 8.
```
DELETE FROM customers WHERE id = 8;
```

### To View Specific Column
This will show name and income of customers.
```
SELECT name, income FROM customers;
```

### Sort Data In Ascending Order By Name
```
SELECT * FROM customers ORDER BY name;
```


### NULL and Empty
- NULL and 0 are different
- NULL and space are different
- In NULL data contains word NULL
- Empty means '' 
- To check NULL you must use IS NULL or IS NOT NULL
- To check empty you can use =''

```
SELECT * FROM customers WHERE description = '';
SELECT * FROM customers WHERE description IS NULL;
SELECT * FROM customers WHERE description IS NOT NULL;
```

### Between
- It shows data between two values
```
SELECT columnname FROM tablename WHERE condition BETWEEN value1 AND value2;
SELECT * FROM customers WHERE id BETWEEN 2 and 7;
SELECT * FROM customers WHERE name BETWEEN 'a' and 'f';
```

### SQL Aliases
- It is used to give custom table name, column name.
- It is temporary name
- AS keyword is used in aliases

```
SELECT columnname AS aliasname FROM tablename; 
SELECT name AS 'Full Name' FROM customers;
SELECT name AS 'Name', address AS 'Address' FROM customers;

```

### TASK
- CREATE DATABASE contactbook
- CREATE TABLE contacts [id, name, phone1, phone2, phone3, phone4]
- Insert 10 data
- Show all data
[7 Min]
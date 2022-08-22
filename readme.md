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
Syntax: UPDATE tablename SET col1='val1', col2 = 'val2', col3 = 'val3' WHERE id = id;
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
Syntax: DELETE FROM table WHERE condition;
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





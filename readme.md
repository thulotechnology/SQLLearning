### Database
Database stores data in organized way.

### Types
- SQL: Structured Query Language. It store data in table. E.g: MySQL, MSSQL, Postgres, Oracle, MS Access
 
- NO SQL: Mongo DB, Cassandra, etc.

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
```sql
CREATE DATABASE databasename;
```

### How to Delete Database
```sql
DROP DATABASE databasename;
```

### How to View Database
```
SHOW DATABASES;
```

### How to Use Database
```
USE DatabaseName;
```

### WRITE SQL Query to Create and Delete Database called "school."

### TO Create:
```
CREATE DATABASE school;
```

### To Delete:
```
DROP DATABASE school;
```

### To View All Databases
```
SHOW DATABASES;
```
### To Use Database
```
USE DatabaseName;
```

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

```
CREATE TABLE TABLENAME(
colname datatype,
colname datatype,
colname datatype
);
```

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
```
- SELECT * FROM tablename;
- E.g SELECT * FROM person;
```

### To View All Data With Condition
```
SELECT * FROM tablename WHERE condition;
E.g SELECT * FROM person WHERE country = 'USA';
```

## Find Max / Min / Avg / Count Value [Must Be Numeric Value]
```
SELECT Functionname(colname) FROM TABLENAME
SELECT MAX(age) FROM person;
SELECT MIN(age) FROM person;
SELECT AVG(age) FROM person;
SELECT COUNT(age) FROM person;
```

### Find Only Different Value
```
SELECT DISTINCT(colname) FROM TABLENAME;
E.g SELECT DISTINCT(country) FROM person;
```

### Some Queries
```
SELECT * FROM person WHERE country IN ('Nepal', 'India');
SELECT * FROM person WHERE country != 'India';
SELECT * FROM person WHERE country NOT IN ('India', 'USA');
SELECT * FROM person WHERE age>19 and age <28;
SELECT * FROM person WHERE age BETWEEN 20 AND 27; -- 20 and 27 are included
```

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
```
DROP TABLE tablename;
E.g DROP TABLE customer;
```

### How to Insert Data Into Table
```
INSERT INTO tablename(column1, column2, column3) VALUES ('val', 'val2', 'val3');
```

- E.g. INSERT INTO customers(name, balance) VALUES ('Raj', 5002.6);

- SELECT country, COUNT(*) FROM person GROUP BY country;

### ORDER BY
It is used to sort data in ascending / decending order.
```
SELECT * FROM customers ORDER BY balance;
SELECT * FROM customers ORDER BY balance DESC;
```

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
```
ALTER TABLE tablename ADD COLUMN columnname datatype;
ALTER TABLE customers ADD COLUMN description varchar(100);
```

### Delete Column to Table
```
ALTER TABLE tablename DROP COLUMN columnname;
```

### Rename Column of Table
```
ALTER TABLE tablename CHANGE oldcolumnname newcolumnname datatype;
ALTER TABLE customers CHANGE phones phone bigint;
```

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


### Join
- It is the process of joining two or more tables.

### Contact Example With Join
```
CREATE DATABASE mycontactbook;
CREATE TABLE users(
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE phones(
    id int PRIMARY KEY AUTO_INCREMENT,
    userid int NOT NULL,
    phone bigint,
    FOREIGN KEY(userid) REFERENCES users(id)
);
SELECT users.name, phones.phone FROM users JOIN phones ON users.id = phones.userid;

```

### LIKE IN SQL
LIKE is used to search data.

WHERE name LIKE 'a%' - Find all names that start with a
WHERE name LIKE '%a' - Find all names that end with a
WHERE name LIKE '%he%' - Find all names that has he on any position
WHERE name LIKE '_r%' - Find any value that has r in second position
WHERE name LIKE 'h___' - Find names that starts with h and has 4 character length.
WHERE name LIKE 's%a' - Find names that starts with s and end with a

```
SELECT * FROM users WHERE name LIKE 's%';
```

### TASK
- FIND ALL CONTACTS THAT START WITH sa
- FIND ALL CONTACTS HAVING ur on any position
- FIND NAME THAT start with a and end with a


### DDL
- Data Defination Language [CREATE, DROP, ALTER]

### DML
- Data Manipulation Language [INSERT, UPDATE, DELETE]


```
CREATE DATABASE facebook;

CREATE TABLE posts(
id int AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
dates date,
username VARCHAR(100)    
);

CREATE TABLE comments(
id int AUTO_INCREMENT PRIMARY KEY,
postid int NOT NULL,
dates date,
username VARCHAR(100),
cmt VARCHAR(255),
FOREIGN KEY(postid) REFERENCES posts(id) 
)

SELECT posts.username AS 'Post Written By', posts.title, comments.cmt, comments.username AS 'Comment By' FROM posts RIGHT JOIN comments ON posts.id = comments.postid;

```

### Facebook DB
```sql
-- To Create Database fb
CREATE DATABASE fb;

-- To Use Database
USE fb;

-- To Create Table users
CREATE TABLE users(
id int PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
username VARCHAR(100) NOT NULL,
password VARCHAR(256) NOT NULL,
phone VARCHAR(15)
);
-- For Inserting Data
INSERT INTO users(name, username, password, phone) VALUES ('Kalpana Shrestha','kalpana','kdjdskjdks','392883983');
INSERT INTO users(name, username, password, phone) VALUES ('Neetu Mulmi','neetu','kdf343kj4','3049349');
INSERT INTO users(name, username, password, phone) VALUES ('Sabina Chaulagain','sabina','232332','232323');

-- For Table Posts
CREATE TABLE posts(
id int PRIMARY KEY AUTO_INCREMENT,
userid int NOT NULL,
post TEXT NOT NULL,
dates date,
FOREIGN KEY(userid) REFERENCES users(id)
);

-- For Inserting posts
INSERT INTO posts(userid, post, dates) VALUES(2,'This Book is my favourite - China Harayeko Manxe','2022-08-24');
INSERT INTO posts(userid, post, dates) VALUES(2,'Today I bought speaker','2022-08-24');
INSERT INTO posts(userid, post, dates) VALUES(3,'Learning Java','2022-08-24');

-- For Table Comments
CREATE TABLE comments(
id int PRIMARY KEY AUTO_INCREMENT,
userid int NOT NULL,
postid int NOT NULL,
cmt TEXT,
dates date,
FOREIGN KEY(userid) REFERENCES users(id),
FOREIGN KEY(postid) REFERENCES posts(id)
) ;

-- For Inserting Comments
INSERT INTO comments(userid, postid, cmt, dates) VALUES (1,1,'Good Book to Read','2022-08-24');
INSERT INTO comments(userid, postid, cmt, dates) VALUES (2,1,'Thank you','2022-08-24');
INSERT INTO comments(userid, postid, cmt, dates) VALUES (3,1,'Book is good','2022-08-24');
INSERT INTO comments(userid, postid, cmt, dates) VALUES (2,3,'For Automation?','2022-08-24');
```

### Task on Query
```sql
-- To view username and posts
SELECT users.name, posts.post FROM users JOIN posts on users.id = posts.userid;

-- To view individual post/s
SELECT users.name, posts.post FROM users JOIN posts on users.id = posts.userid WHERE users.id = 2;

-- To View intersection
SELECT posts.post AS "Post", users.name AS "Post By:", comments.cmt AS "Comment" FROM users JOIN posts ON users.id = posts.userid JOIN comments ON posts.userid = comments.userid;

-- To View Comments By Post
SELECT comments.cmt, users.username FROM comments JOIN users ON comments.userid = users.id WHERE postid = 1;


```

### To Create View
```
CREATE VIEW viewname AS <sql query>;
```

### To Display Data From View
```
SELECT * FROM viewname;
```

### TASK
CREATE VIEW TO SHOW ALL USERS



### Store Procedure

```sql
DELIMITER $$

CREATE PROCEDURE GetAllUsers(IN userid int)
BEGIN
	SELECT * FROM users WHERE id=userid;    
END$$
DELIMITER ;
```

### TASK
CREATE PROCEDURE to view post by its id;


### Datetime in SQL
To View Datetime
```sql
SELECT NOW();
```

### To View Date
```sql
SELECT CURRENT_DATE();
```

### To View Date
```sql
SELECT CURRENT_TIME();
```

### Find Difference Between Dates
```sql
SELECT DATEDIFF('2022-08-25','2022-08-23');
```

```sql
SELECT id, name, FLOOR(DATEDIFF(CURRENT_DATE(), birthdate)/365) AS age FROM users;
```

### TASK
- Add Column dob to users table
- Find age of users
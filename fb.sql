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



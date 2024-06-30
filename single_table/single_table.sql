
CREATE DATABASE IF NOT EXISTS sql_intro;
USE sql_intro;

CREATE TABLE IF NOT EXISTS ages ( 
  name VARCHAR(128), 
  age INTEGER
);

DELETE FROM ages;
DELETE FROM ages;
INSERT INTO ages (`name`, age) VALUES ('Lina', 26);
INSERT INTO ages (`name`, age) VALUES ('Justine', 30);
INSERT INTO ages (`name`, age) VALUES ('Danniel', 19);
INSERT INTO ages (`name`, age) VALUES ('Iseabel', 21);

SELECT sha1(CONCAT(name, age)) AS hash FROM ages ORDER BY hash;

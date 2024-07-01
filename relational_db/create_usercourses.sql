USE sql_intro;

DELETE FROM `User`;
DELETE FROM Course;
DELETE FROM Member;

INSERT INTO `User` (name) VALUES
	("Erynn"),
	("Feden"),
	("Inayah"),
	("Jada"),
	("Zhen"),
	("Antonio"),
	("Connell"),
	("Owen"),
	("Sandy"),
	("Shelbie"),
	("Shiza"),
	("Connall"),
	("Ferne"),
	("Geraldine"),
	("Karamvir");

INSERT INTO Course (title) VALUES
  ("si106"),
  ("si110"),
  ("si206");

INSERT INTO Member (user_id, course_id, role) VALUES
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Erynn%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si106%"),
    1
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Feden%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si106%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Inayah%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si106%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Jada%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si106%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Zhen%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si106%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Antonio%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si110%"),
    1
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Connell%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si110%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Owen%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si110%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Sandy%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si110%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Shelbie%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si110%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Shiza%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si206%"),
    1
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Connall%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si206%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Ferne%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si206%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Geraldine%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si206%"),
    0
  ),
  (
    (SELECT user_id FROM `User` WHERE name LIKE "%Karamvir%"),
    (SELECT course_id FROM Course WHERE title LIKE "%si206%"),
    0
  );

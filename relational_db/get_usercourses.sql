
USE sql_intro;

SELECT 
  `User`.name as "Name",
  Course.title as "Course",
  Member.role as "Role"
FROM Member
INNER JOIN `User` ON `User`.user_id = Member.user_id
INNER JOIN Course ON Course.course_id = Member.course_id

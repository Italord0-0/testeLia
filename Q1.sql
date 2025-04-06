-- Database: teste lia

-- DROP DATABASE IF EXISTS "teste lia";

CREATE DATABASE "teste lia"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt-BR'
    LC_CTYPE = 'pt-BR'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
 drop table students;
 drop table courses;
 drop table schools;
create table  students
(id int primary key not null,
name varchar(50),
enrolled_at date,
course_id int );





create table courses
(id int primary key not null,
name varchar (50),
price decimal (10,2),
school_id int );

create table schools
(id int primary key not null,
name varchar (50) );

alter table students add constraint fk_studentsCourses
foreign key (course_id)
references courses (id);

alter table courses  add constraint fk_CoursesSchool
foreign key (school_id)
references schools (id);

INSERT INTO schools  (id, name)
VALUES (10, 'IEMG');
INSERT INTO schools  (id, name)
VALUES (5, 'EMASB');


INSERT INTO courses (id, name, price, school_id)
VALUES 
  (101, 'Data Science IEMG', 1000.00, 10),
  (102, 'Data Analytics IEMG', 1200.00, 10);

INSERT INTO courses (id, name, price, school_id)
VALUES 
  (201, 'Data Engineering EMASB', 1100.00, 5),
  (202, 'Data Visualization EMASB', 1300.00, 5);


INSERT INTO courses (id, name, price, school_id)
VALUES 
  (103, 'Inteligência Artificial IEMG', 1500.00, 10);

INSERT INTO courses (id, name, price, school_id)
VALUES 
  (203, 'Programação em Python EMASB', 1400.00, 5);

INSERT INTO students (id, name, enrolled_at, course_id)
VALUES 
  (1, 'Alice', '2024-01-10', 101),
  (2, 'Bruno', '2024-01-10', 101),
  (3, 'Carla', '2024-01-16', 102),
  (4, 'Daniel', '2024-01-16', 102);

INSERT INTO students (id, name, enrolled_at, course_id)
VALUES 
  (5, 'Eduarda', '2024-02-06', 201),
  (6, 'Felipe', '2024-02-06', 201),
  (7, 'Giovana', '2024-02-10', 202),
  (8, 'Hugo', '2024-02-11', 202);

INSERT INTO students (id, name, enrolled_at, course_id)
VALUES 
  (9,  'Isabela', '2024-03-01', 103),
  (10, 'João',    '2024-03-02', 103);

INSERT INTO students (id, name, enrolled_at, course_id)
VALUES 
  (11, 'Karina', '2024-03-03', 203),
  (12, 'Lucas',  '2024-03-04', 203);


SELECT 
	c.name AS course_name,
	sc.name AS school_name,
	st.enrolled_at,
	COUNT(st.id) AS student_count,
	SUM(c.price) AS total_revenue
FROM students st
JOIN courses c ON st.course_id = c.id
JOIN schools sc ON c.school_id = sc.id
WHERE c.name LIKE 'Data%'  
GROUP BY sc.name, st.enrolled_at, c.name
ORDER BY st.enrolled_at DESC;






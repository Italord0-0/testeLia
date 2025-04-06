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

INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(1001, 'Aluno_DS_1', '2024-01-01', 101),
(1002, 'Aluno_DS_2', '2024-01-02', 101),
(1003, 'Aluno_DS_3', '2024-01-03', 101),
(1004, 'Aluno_DS_4', '2024-01-04', 101),
(1005, 'Aluno_DS_5', '2024-01-05', 101),
(1006, 'Aluno_DS_6', '2024-01-06', 101),
(1007, 'Aluno_DS_7', '2024-01-07', 101),
(1008, 'Aluno_DS_8', '2024-01-08', 101),
(1009, 'Aluno_DS_9', '2024-01-09', 101),
(10010, 'Aluno_DS_10', '2024-01-10', 101),
(10011, 'Aluno_DS_11', '2024-01-11', 101),
(10012, 'Aluno_DS_12', '2024-01-12', 101),
(10013, 'Aluno_DS_13', '2024-01-13', 101),
(10014, 'Aluno_DS_14', '2024-01-14', 101),
(15, 'Aluno_DS_15', '2024-01-15', 101),
(16, 'Aluno_DS_16', '2024-01-16', 101),
(17, 'Aluno_DS_17', '2024-01-17', 101),
(18, 'Aluno_DS_18', '2024-01-18', 101),
(19, 'Aluno_DS_19', '2024-01-19', 101),
(20, 'Aluno_DS_20', '2024-01-20', 101),
(21, 'Aluno_DS_21', '2024-01-21', 101),
(22, 'Aluno_DS_22', '2024-01-22', 101),
(23, 'Aluno_DS_23', '2024-01-23', 101),
(24, 'Aluno_DS_24', '2024-01-24', 101),
(25, 'Aluno_DS_25', '2024-01-25', 101),
(26, 'Aluno_DS_26', '2024-01-26', 101),
(27, 'Aluno_DS_27', '2024-01-27', 101),
(28, 'Aluno_DS_28', '2024-01-28', 101),
(29, 'Aluno_DS_29', '2024-01-29', 101),
(30, 'Aluno_DS_30', '2024-01-30', 101);


INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(31, 'Aluno_DA_1', '2024-01-15', 102),
(32, 'Aluno_DA_2', '2024-01-16', 102),
(33, 'Aluno_DA_3', '2024-01-17', 102),
(34, 'Aluno_DA_4', '2024-01-18', 102),
(35, 'Aluno_DA_5', '2024-01-19', 102),
(36, 'Aluno_DA_6', '2024-01-20', 102),
(37, 'Aluno_DA_7', '2024-01-21', 102),
(38, 'Aluno_DA_8', '2024-01-22', 102),
(39, 'Aluno_DA_9', '2024-01-23', 102),
(40, 'Aluno_DA_10', '2024-01-24', 102),
(41, 'Aluno_DA_11', '2024-01-25', 102),
(42, 'Aluno_DA_12', '2024-01-26', 102),
(43, 'Aluno_DA_13', '2024-01-27', 102),
(44, 'Aluno_DA_14', '2024-01-28', 102),
(45, 'Aluno_DA_15', '2024-01-29', 102),
(46, 'Aluno_DA_16', '2024-01-30', 102),
(47, 'Aluno_DA_17', '2024-01-31', 102),
(48, 'Aluno_DA_18', '2024-02-01', 102),
(49, 'Aluno_DA_19', '2024-02-02', 102),
(50, 'Aluno_DA_20', '2024-02-03', 102),
(51, 'Aluno_DA_21', '2024-02-04', 102),
(52, 'Aluno_DA_22', '2024-02-05', 102),
(53, 'Aluno_DA_23', '2024-02-06', 102),
(54, 'Aluno_DA_24', '2024-02-07', 102),
(55, 'Aluno_DA_25', '2024-02-08', 102),
(56, 'Aluno_DA_26', '2024-02-09', 102),
(57, 'Aluno_DA_27', '2024-02-10', 102),
(58, 'Aluno_DA_28', '2024-02-11', 102),
(59, 'Aluno_DA_29', '2024-02-12', 102),
(60, 'Aluno_DA_30', '2024-02-13', 102);


INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(61, 'Aluno_IA_1', '2024-02-01', 103),
(62, 'Aluno_IA_2', '2024-02-02', 103),
(63, 'Aluno_IA_3', '2024-02-03', 103),
(64, 'Aluno_IA_4', '2024-02-04', 103),
(65, 'Aluno_IA_5', '2024-02-05', 103),
(66, 'Aluno_IA_6', '2024-02-06', 103),
(67, 'Aluno_IA_7', '2024-02-07', 103),
(68, 'Aluno_IA_8', '2024-02-08', 103),
(69, 'Aluno_IA_9', '2024-02-09', 103),
(70, 'Aluno_IA_10', '2024-02-10', 103),
(71, 'Aluno_IA_11', '2024-02-11', 103),
(72, 'Aluno_IA_12', '2024-02-12', 103),
(73, 'Aluno_IA_13', '2024-02-13', 103),
(74, 'Aluno_IA_14', '2024-02-14', 103),
(75, 'Aluno_IA_15', '2024-02-15', 103),
(76, 'Aluno_IA_16', '2024-02-16', 103),
(77, 'Aluno_IA_17', '2024-02-17', 103),
(78, 'Aluno_IA_18', '2024-02-18', 103),
(79, 'Aluno_IA_19', '2024-02-19', 103),
(80, 'Aluno_IA_20', '2024-02-20', 103),
(81, 'Aluno_IA_21', '2024-02-21', 103),
(82, 'Aluno_IA_22', '2024-02-22', 103),
(83, 'Aluno_IA_23', '2024-02-23', 103),
(84, 'Aluno_IA_24', '2024-02-24', 103),
(85, 'Aluno_IA_25', '2024-02-25', 103),
(86, 'Aluno_IA_26', '2024-02-26', 103),
(87, 'Aluno_IA_27', '2024-02-27', 103),
(88, 'Aluno_IA_28', '2024-02-28', 103),
(89, 'Aluno_IA_29', '2024-02-29', 103),
(90, 'Aluno_IA_30', '2024-03-01', 103);


INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(91, 'Aluno_DE_1', '2024-01-01', 201),
(92, 'Aluno_DE_2', '2024-01-02', 201),
(93, 'Aluno_DE_3', '2024-01-03', 201),
(94, 'Aluno_DE_4', '2024-01-04', 201),
(95, 'Aluno_DE_5', '2024-01-05', 201),
(96, 'Aluno_DE_6', '2024-01-06', 201),
(97, 'Aluno_DE_7', '2024-01-07', 201),
(98, 'Aluno_DE_8', '2024-01-08', 201),
(99, 'Aluno_DE_9', '2024-01-09', 201),
(100, 'Aluno_DE_10', '2024-01-10', 201),
(101, 'Aluno_DE_11', '2024-01-11', 201),
(102, 'Aluno_DE_12', '2024-01-12', 201),
(103, 'Aluno_DE_13', '2024-01-13', 201),
(104, 'Aluno_DE_14', '2024-01-14', 201),
(105, 'Aluno_DE_15', '2024-01-15', 201),
(106, 'Aluno_DE_16', '2024-01-16', 201),
(107, 'Aluno_DE_17', '2024-01-17', 201),
(108, 'Aluno_DE_18', '2024-01-18', 201),
(109, 'Aluno_DE_19', '2024-01-19', 201),
(110, 'Aluno_DE_20', '2024-01-20', 201),
(111, 'Aluno_DE_21', '2024-01-21', 201),
(112, 'Aluno_DE_22', '2024-01-22', 201),
(113, 'Aluno_DE_23', '2024-01-23', 201),
(114, 'Aluno_DE_24', '2024-01-24', 201),
(115, 'Aluno_DE_25', '2024-01-25', 201),
(116, 'Aluno_DE_26', '2024-01-26', 201),
(117, 'Aluno_DE_27', '2024-01-27', 201),
(118, 'Aluno_DE_28', '2024-01-28', 201),
(119, 'Aluno_DE_29', '2024-01-29', 201),
(120, 'Aluno_DE_30', '2024-01-30', 201);


INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(121, 'Aluno_DV_1', '2024-02-01', 202),
(122, 'Aluno_DV_2', '2024-02-02', 202),
(123, 'Aluno_DV_3', '2024-02-03', 202),
(124, 'Aluno_DV_4', '2024-02-04', 202),
(125, 'Aluno_DV_5', '2024-02-05', 202),
(126, 'Aluno_DV_6', '2024-02-06', 202),
(127, 'Aluno_DV_7', '2024-02-07', 202),
(128, 'Aluno_DV_8', '2024-02-08', 202),
(129, 'Aluno_DV_9', '2024-02-09', 202),
(130, 'Aluno_DV_10', '2024-02-10', 202),
(131, 'Aluno_DV_11', '2024-02-11', 202),
(132, 'Aluno_DV_12', '2024-02-12', 202),
(133, 'Aluno_DV_13', '2024-02-13', 202),
(134, 'Aluno_DV_14', '2024-02-14', 202),
(135, 'Aluno_DV_15', '2024-02-15', 202),
(136, 'Aluno_DV_16', '2024-02-16', 202),
(137, 'Aluno_DV_17', '2024-02-17', 202),
(138, 'Aluno_DV_18', '2024-02-18', 202),
(139, 'Aluno_DV_19', '2024-02-19', 202),
(140, 'Aluno_DV_20', '2024-02-20', 202),
(141, 'Aluno_DV_21', '2024-02-21', 202),
(142, 'Aluno_DV_22', '2024-02-22', 202),
(143, 'Aluno_DV_23', '2024-02-23', 202),
(144, 'Aluno_DV_24', '2024-02-24', 202),
(145, 'Aluno_DV_25', '2024-02-25', 202),
(146, 'Aluno_DV_26', '2024-02-26', 202),
(147, 'Aluno_DV_27', '2024-02-27', 202),
(148, 'Aluno_DV_28', '2024-02-28', 202),
(149, 'Aluno_DV_29', '2024-02-29', 202),
(150, 'Aluno_DV_30', '2024-03-01', 202);


INSERT INTO students (id, name, enrolled_at, course_id) VALUES
(151, 'Aluno_EX_1', '2024-03-01', 203),
(152, 'Aluno_EX_2', '2024-03-02', 203),
(153, 'Aluno_EX_3', '2024-03-03', 203),
(154, 'Aluno_EX_4', '2024-03-04', 203),
(155, 'Aluno_EX_5', '2024-03-05', 203),
(156, 'Aluno_EX_6', '2024-03-06', 203),
(157, 'Aluno_EX_7', '2024-03-07', 203),
(158, 'Aluno_EX_8', '2024-03-08', 203),
(159, 'Aluno_EX_9', '2024-03-09', 203),
(160, 'Aluno_EX_10', '2024-03-10', 203),
(161, 'Aluno_EX_11', '2024-03-11', 203),
(162, 'Aluno_EX_12', '2024-03-12', 203),
(163, 'Aluno_EX_13', '2024-03-13', 203),
(164, 'Aluno_EX_14', '2024-03-14', 203),
(165, 'Aluno_EX_15', '2024-03-15', 203),
(166, 'Aluno_EX_16', '2024-03-16', 203),
(167, 'Aluno_EX_17', '2024-03-17', 203),
(168, 'Aluno_EX_18', '2024-03-18', 203),
(169, 'Aluno_EX_19', '2024-03-19', 203),
(170, 'Aluno_EX_20', '2024-03-20', 203),
(171, 'Aluno_EX_21', '2024-03-21', 203),
(172, 'Aluno_EX_22', '2024-03-22', 203),
(173, 'Aluno_EX_23', '2024-03-23', 203),
(174, 'Aluno_EX_24', '2024-03-24', 203),
(175, 'Aluno_EX_25', '2024-03-25', 203),
(176, 'Aluno_EX_26', '2024-03-26', 203),
(177, 'Aluno_EX_27', '2024-03-27', 203),
(178, 'Aluno_EX_28', '2024-03-28', 203),
(179, 'Aluno_EX_29', '2024-03-29', 203),
(180, 'Aluno_EX_30', '2024-03-30', 203);

-- Letra A
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
-- Letra B
SELECT 
	c.name AS course_name,
	s.name AS school_name,
	DATE(st.enrolled_at) AS enrollment_day,
	COUNT(*) AS students_per_day,
	
	-- Soma acumulada
	SUM(COUNT(*)) OVER (
		PARTITION BY s.name 
		ORDER BY DATE(st.enrolled_at)
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
	) AS cumulative_sum,
	
	-- Média móvel de 7 dias
	ROUND(AVG(COUNT(*)) OVER (
		PARTITION BY s.name 
		ORDER BY DATE(st.enrolled_at)
		ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
	), 2) AS moving_avg_7d,
	
	-- Média móvel de 30 dias
	ROUND(AVG(COUNT(*)) OVER (
		PARTITION BY s.name 
		ORDER BY DATE(st.enrolled_at)
		ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
	), 2) AS moving_avg_30d

FROM students st
JOIN courses c ON st.course_id = c.id
JOIN schools s ON c.school_id = s.id
WHERE c.name LIKE 'Data%'
GROUP BY s.name, DATE(st.enrolled_at), c.name
ORDER BY s.name, enrollment_day;





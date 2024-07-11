USE kera_web;

-- Insert records in Applicant table
INSERT INTO  Applicant (app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add)
VALUES ('John Smith', '1997-02-26', '8213 Ayala Avenue', 'Makati City', 'Metro Manila', '1209', '09123456789', 'johnsmith@gmail.com'),
	('Elif Day', '1997-09-14', '123 Pearl Street', 'Quezon City', 'Metro Manila', '1118', '09098765432', 'elifday@gmail.com'),
    ('Rayhan Jenkins', '1995-05-20', '456 Chanel Street', 'Caloocan City', 'Metro Manila', '1400', '09100110233', 'rayhanjenkins@gmail.com'),
    ('Harriet McNeil', '1995-12-03', '789 Domingo Street', 'San Juan City', 'Metro Manila', '1500', '09245546776', 'harrietmcneil@gmail.com'),
    ('Asad Bird', '1999-01-15', '459 Barangay Gumamela', 'Batangas City', 'Metro Manila', '4213', '09899818095', 'asadbird@gmail.com'),
    ('Poppie Gallegos', '1998-03-01', '044 Amethyst Street', 'Imus', 'Cavite', '4103', '09191609185', 'poppiegallegos@gmail.com'),
    ('Cayden Molina', '1996-04-05', '567 Vegetable Ivory Street', 'Taytay', 'Rizal', '1920', '09125221205', 'caydenmolina@gmail.com'),
    ('Maeve Lyons', '1995-01-03', '2519 Willows Street', 'Antipolo', 'Rizal', '1800', '09171223151', 'maevelyons@gmail.com'),
    ('Marissa Diaz', '1995-08-11', '2514 Barton Street', 'San Jose Del Monte', 'Bulacan', '3023', '09030812150', 'marissadiaz@gmail.com'),
    ('Jana Moreno', '1995-01-03', '3011 Soper Street', 'Quezon City', 'Metro Manila', '1118', '09209141920', 'janamoreno@gmail.com');
    
-- Insert records in Request table
INSERT INTO Request (emp_type, pos_app, des_sal, date_start, req_status, app_id)
VALUES ('Full-time', 'Technical Support Specialist', 45000, '2024-07-23', 'Accepted', 1),
	('Full-time', 'Account Executive', 60000, '2024-09-05', 'Rejected', 2),
    ('Part-time', 'Data Entry Clerk', 32000, '2024-11-11', 'Accepted', 3),
    ('Part-time', 'Call Center Agent', 28000, '2024-08-12', 'Pending', 4),
    ('Part-time', 'Content Moderator', 25000, '2024-10-25', 'Pending', 5),
    ('Full-time', 'Human Resources Assistant', 52000, '2024-12-13', 'Accepted', 6),
    ('Part-time', 'Telemarketer', 40000, '2024-07-20', 'Pending', 7),
    ('Full-time', 'Social Media Specialist', 28000, '2024-08-14', 'Rejected', 8),
    ('Full-time', 'Quality Assurance Analyst', 31000, '2024-09-05', 'Rejected', 9),
    ('Full-time', 'Social Media Specialist', 31000, '2024-10-13', 'Pending', 10);
    
-- Insert records in Work table
INSERT INTO Work (comp_name, work_period, comp_pos, app_id)
VALUES ('ABC Solutions', '2018-2021', 'Quality Assurance Tester', 1),
	('DEF Innovations', '2021-2023', 'IT Support Technician', 1),
	('ABC Solutions', '2016-2018', 'Account Coordinator', 2),
	('JKL Corporated', '2019-2023', 'Account Manager', 2),
	('GHI Elite', '2017-2020', 'Data Entry Operator', 3),
	('JKL Corporated', '2018-2021', 'Call Center Agent', 4),
	('PQR Click', '2020-2023', 'Content Moderator', 5),
	('VWX Wave', '2014-2019', 'Data Entry Clerk', 6),
	('ABC Solutions', '2019-2022', 'Telemarketer', 6),
	('EFG Company', '2018-2020', 'Call Center Agent', 7),
	('HIJ Enterprise', '2020-2023', 'Sales Representative', 7),
	('OEA Tech', '2013-2016', 'Call Center Agent', 8),
	('OEA Tech', '2019-2021', 'Customer Service Representative', 8),
	('ABC Solutions', '2022-2023', 'Marketing Assistant', 8),
	('PQR Click', '2016-2021', 'Customer Support Representative', 9),
	('PQR Click', '2021-2023', 'Software Tester', 9),
	('DEF Innovations', '2013-2018', 'Market Research Interviewer', 10),
	('UCR Wave', '2019-2023', 'Digital Marketing Coordinator', 10);

-- Insert records in Education table
INSERT INTO Education (app_id, school_name, school_loc, date_grad, educ_attain)
VALUES (1, 'University of the Philippines - Diliman', 'Diliman, Quezon City', '2020-05-12', 'Bachelor of Science in Computer Science'),
	(2, 'University of Santo Tomas', 'Sampaloc, Manila City', '2020-05-08', 'Master in Business Administration'),
	(3, 'STI College - Marikina', 'Concepcion, Marikina City', '2018-07-06', 'Bachelor of Science in Information Technology'),
	(4, 'Lyceum of the Philippines University - Manila', 'Intramuros, Metro Manila', '2018-07-09', 'Bachelor of Science in Management Accounting'),
	(5, 'Centro Escolar University - Makati', 'Sen. Gil Puyat Ave., Makati City', '2015-09-12', 'Bachelor of Science in Psychology'),
	(6, 'Far Eastern University - Main', 'Sampaloc, Manila City', '2021-05-05', 'Master of Arts in Communication'),
	(7, 'De La Salle University - Manila', 'Malate, Manila City', '2021-06-05', 'Master of Science in Marketing'),
	(8, 'Polytechnic University of the Philippines - Taguig', 'Bicutan, Taguig City', '2013-07-04', 'Bachelor of Science in Information Technology'),
	(9, 'Polytechnic University of the Philippines - Main', 'Sta. Mesa, Manila City', '2014-05-09', 'Bachelor of Science in Computer Science'),
	(10, 'Polytechnic University of the Philippines - Main', 'Sta. Mesa, Manila City', '2012-07-20', 'Bachelor of Science in Information Technology');

-- Insert records in Skill_set table
INSERT INTO Skill_set (app_id, skill_one, skill_two, skill_three, skill_four)
VALUES (1, 'Communication', 'Technical proficiency', NULL, NULL),
	(2, 'Analytical skills', 'Active listening', 'Patience', 'Empathy'),
	(3, 'Attention to detail', 'Computer literacy', 'Technical proficiency', 'Multitasking'),
	(4, 'Communication', 'Problem solving', 'Speed', 'Multitasking'),
	(5, 'Communication', 'Organization', 'Analytical skills', NULL),
	(6, 'Communication', 'Computer literacy', 'Flexibility', 'Interpersonal communication'),
	(7, 'Communication', 'Active listening', 'Product knowledge', 'Problem solving'),
	(8, 'Organization', 'Computer literacy', 'Communication', NULL),
	(9, 'Attention to detail', 'Analytical skills', 'Problem solving', NULL),
	(10, 'Communication', 'Organization', 'Computer literacy', 'Adaptability');

-- Procedure for deleting the records of the applicant in Applicant, Work, Education, and Skill_set tables
DELIMITER //

CREATE PROCEDURE Delete_Applicant(IN app_id_delete INT)
BEGIN
	DELETE FROM Applicant WHERE app_id = app_id_delete;
END //

DELIMITER ;

-- Procedure for inserting records of a new applicant
DELIMITER //

CREATE PROCEDURE Create_Applicant(
    IN new_app_name VARCHAR(50),
    IN new_date_birth DATE,
    IN new_app_add VARCHAR(80),
    IN new_city VARCHAR(30),
    IN new_state VARCHAR(30),
    IN new_zip_code VARCHAR(10),
    IN new_phone_num VARCHAR(15),
    IN new_email_add VARCHAR(50),
    IN new_emp_type CHAR(9),
    IN new_pos_app VARCHAR(30),
    IN new_des_sal INT,
    IN new_date_start DATE,
    IN new_comp_name VARCHAR(40),
    IN new_work_period CHAR(9),
    IN new_comp_pos VARCHAR(40),
    IN new_school_name VARCHAR(80),
    IN new_school_loc VARCHAR(50),
    IN new_date_grad DATE,
    IN new_educ_attain VARCHAR(80),
    IN new_skill_one VARCHAR(30),
    IN new_skill_two VARCHAR(30),
    IN new_skill_three VARCHAR(30),
    IN new_skill_four VARCHAR(30)
)
BEGIN
    START TRANSACTION;

    INSERT INTO Applicant (app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add)
    VALUES (new_app_name, new_date_birth, new_app_add, new_city, new_state, new_zip_code, new_phone_num, new_email_add);
    
    SET @app_id = LAST_INSERT_ID();

    INSERT INTO Request (emp_type, pos_app, des_sal, date_start, app_id)
    VALUES (new_emp_type, new_pos_app, new_des_sal, new_date_start, @app_id);

    INSERT INTO Work (comp_name, work_period, comp_pos, app_id)
    VALUES (new_comp_name, new_work_period, new_comp_pos, @app_id);

    INSERT INTO Education (app_id, school_name, school_loc, date_grad, educ_attain)
    VALUES (@app_id, new_school_name, new_school_loc, new_date_grad, new_educ_attain);

    INSERT INTO Skill_set (app_id, skill_one, skill_two, skill_three, skill_four)
    VALUES (@app_id, new_skill_one, new_skill_two, new_skill_three, new_skill_four);

    COMMIT;
END //

DELIMITER ;

-- Procedure for displaying all applicant records with the status of their application
DELIMITER //

CREATE PROCEDURE Display_Applicant()
BEGIN
	SELECT Applicant.app_id AS ID, app_name AS Name, CONCAT_WS(', ', app_add, city, state, zip_code) AS Address, email_add AS Email_Address, req_status AS Status
    FROM Applicant, Request
    WHERE Applicant.app_id = Request.app_id
    ORDER BY Applicant.app_id;
END //

DELIMITER ;

-- Procedure for updating the status of the application
DELIMITER //

CREATE PROCEDURE Update_Status(IN update_application VARCHAR(8))
BEGIN
	UPDATE Request SET req_status = update_application;
END //

DELIMITER ;

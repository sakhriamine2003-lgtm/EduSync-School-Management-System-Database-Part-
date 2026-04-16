CREATE DATABASE test1 ; 

USE test1 ;
CREATE Table roles (
    id INT PRIMARY KEY  AUTO_INCREMENT ,
    label VARCHAR(50) NOT NULL   

) ; 


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    firstname VARCHAR(50) NOT NULL ,
     lastname VARCHAR(50) NOT NULL ,
     email VARCHAR(100) NOT NULL UNIQUE  ,
     password  VARCHAR(100) NOT NULL
);


CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    classroom_number VARCHAR(50)
);

CREATE TABLE courses(
   id INT PRIMARY key AUTO_INCREMENT ,
   title VARCHAR(100) ,
   description  VARCHAR(100) ,
   total_hours VARCHAR(100)

);

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_of_birth DATE,
    student_number VARCHAR(50)
     
);


CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE,
    status VARCHAR(50)
);


-- les rolation entre les tables  =>

-- pour  users/roles
ALTER Table users ADD  role_id INT NOT NULL ;
ALTER TABLE courses ADD id_user INT  ;
ALTER TABLE  students ADD id_user INT ;
ALTER TABLE classes ADD student_id INT ;
ALTER TABLE enrollments ADD student_id  INT , ADD cours_id INT ;






ALTER Table users ADD  Foreign Key (role_id) REFERENCES roles(id) ;
ALTER TABLE courses ADD Foreign Key (id_user) REFERENCES users(id) ;

ALTER TABLE students ADD Foreign Key (id_user) REFERENCES users(id) ;

ALTER TABLE classes ADD Foreign Key (student_id) REFERENCES students(id) ;

ALTER TABLE enrollments ADD Foreign Key (student_id ) REFERENCES students(id) ,
 ADD Foreign Key (cours_id) REFERENCES courses(id) ;









-- INSERT INTO roles (label) VALUES 
-- ('Admin'),
-- ('Prof'),
-- ('Student');
  


-- INSERT INTO users (firstname, lastname, email, password ,role_id) VALUES
-- ('Ali', 'Benali', 'ali@gmail.com', '1234' ,4),
-- ('Sara', 'Amrani', 'sara@gmail.com', '1234',5),
-- ('Youssef', 'Karimi', 'youssef@gmail.com', '1234',6);


-- INSERT INTO classes (name, classroom_number) VALUES
-- ('Class A', '101'),
-- ('Class B', '102');



-- INSERT INTO courses (title, description, total_hours,id_user) VALUES
-- ('Math', 'Basic Math Course', '40' , 34),
-- ('Physics', 'Intro to Physics', '35' ,35),
-- ('SQL', 'Database Course', '30' , 36);


-- INSERT INTO students (date_of_birth, student_number) VALUES
-- ('2005-03-10', 'ST001'),
-- ('2004-07-15', 'ST002'),
-- ('2005-01-20', 'ST003');


-- INSERT INTO enrollments (enrolled_at, status) VALUES
-- ('2026-01-10', 'active'),
-- ('2026-01-12', 'active'),
-- ('2026-01-15', 'inactive');



    
  



















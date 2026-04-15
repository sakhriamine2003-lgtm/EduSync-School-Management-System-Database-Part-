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
     password  VARCHAR(100) NOT NULL ,
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

)

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_of_birth DATE,
    student_number VARCHAR(50)
     
)


CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE,
    status VARCHAR(50)
)


-- les rolation entre les tables  =>



-- pour  users/roles
ALTER Table users ADD 
    role_id INT NOT NULL ;
ALTER Table users ADD  Foreign Key (role_id) REFERENCES roles(id) ;












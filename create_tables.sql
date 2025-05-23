create table User (
    user_id int primary key AUTO_INCREMENT,
    name varchar(50) not null,
    national_id varchar(10) unique not null,
    role ENUM('student', 'professor', 'student and professor') not null
);


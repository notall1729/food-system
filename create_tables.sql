create table User (
    user_id int primary key AUTO_INCREMENT,
    name varchar(50) not null,
    national_id varchar(10) unique not null,
    role ENUM('student', 'professor', 'student and professor') not null
);

create table Student(
    student_id int primary key ,
    user_id int not null ,
    student_number varchar(8) not null ,
    major varchar(30) not null ,
    foreign key (user_id) peferences User(user_id)
);


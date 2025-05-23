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

create table Professor(
    professor_id int primary key ,
    user_id int not null ,
    personnel_number varchar(12) unique not null ,
    department varchar(30) not null ,
    academic_rank varchar(20) not null ,
    foreign key (user_id) peferences User(user_id)
);


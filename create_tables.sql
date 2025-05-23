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
    foreign key (user_id) references User(user_id)
);

create table Professor(
    professor_id int primary key ,
    user_id int not null ,
    personnel_number varchar(12) unique not null ,
    department varchar(30) not null ,
    academic_rank varchar(20) not null ,
    foreign key (user_id) references User(user_id)
);

create table Menu(
    menu_id int primary key AUTO_INCREMENT,
    food_name varchar(30) not null ,
    price int not null ,
    available_date DATE not null
);

create table Orders(
    order_id int primary key AUTO_INCREMENT,
    user_id int not null ,
    order_date timestamp default current_timestamp,
    foreign key (user_id) references User(user_id)
);

create table OrderItem(
    order_item_id int primary key AUTO_INCREMENT,
    order_id int not null ,
    menu_id int not null ,
    quantity int not null ,
    foreign key (order_id) references Orders(order_id),
    foreign key (menu_id) references Menu(menu_id)
);
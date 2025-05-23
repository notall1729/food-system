insert into User (name, national_id, role) values
('Saeed', '0127439810', 'student'),
('Golnar', '0067238962', 'professor'),
('Sana', '0075149932', 'student and professor');

insert into Student(student_id, user_id, student_number, major) values
(1,1, '40312075', 'computer science');

insert into Professor(professor_id, user_id, personnel_number, department, academic_rank) values
(1, 2, '8612378', 'computer science','Associate professor');

insert into Menu(food_name, price, available_date)values
('قورمه سبزی', 15000, '2025-05-23'),
('پیتزا', 7500, '2025-06-21'),
('چلوکباب', 21000, '2025-07-07');

insert into Orders (user_id) values
(1),
(3);

insert into OrderItem (order_id, menu_id, quantity) values
(1,1,2),
(1, 2, 2),
(2, 3,1);
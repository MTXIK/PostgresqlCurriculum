INSERT INTO students (student_id, number_test_book, first_name, last_name) VALUES
(1, 'TB001', 'Иван', 'Иванов'),
(2, 'TB002', 'Петр', 'Петров'),
(3, 'TB003', 'Мария', 'Сидорова'),
(4, 'TB004', 'Анна', 'Кузнецова'),
(5, 'TB005', 'Дмитрий', 'Смирнов'),
(6, 'TB006', 'Ольга', 'Попова'),
(7, 'TB007', 'Алексей', 'Васильев'),
(8, 'TB008', 'Елена', 'Морозова'),
(9, 'TB009', 'Сергей', 'Новиков'),
(10, 'TB010', 'Наталья', 'Федорова'),
(11, 'TB011', 'Максим', 'Козлов'),
(12, 'TB012', 'Татьяна', 'Павлова'),
(13, 'TB013', 'Андрей', 'Зайцев'),
(14, 'TB014', 'Екатерина', 'Соловьева'),
(15, 'TB015', 'Виктор', 'Степанов'),
(16, 'TB016', 'Юлия', 'Михайлова'),
(17, 'TB017', 'Владимир', 'Орлов'),
(18, 'TB018', 'Ксения', 'Белоусова'),
(19, 'TB019', 'Роман', 'Киселев'),
(20, 'TB020', 'Марина', 'Гусева');

INSERT INTO teachers (teacher_id, first_name, last_name) VALUES
(1, 'Александр', 'Виноградов'),
(2, 'Галина', 'Дмитриева'),
(3, 'Николай', 'Егоров'),
(4, 'Лариса', 'Крылова'),
(5, 'Михаил', 'Николаев'),
(6, 'Светлана', 'Макарова'),
(7, 'Игорь', 'Лебедев'),
(8, 'Вера', 'Соболева'),
(9, 'Олег', 'Александров'),
(10, 'Ирина', 'Логинова');

INSERT INTO course (course_id, name, speciality, semester, lectures, lab_works, teacher_id) VALUES
(1, 'Математический анализ', 'Прикладная математика', 1, 30, 15, 1),
(2, 'Алгоритмы и структуры данных', 'Информатика', 2, 40, 20, 2),
(3, 'Физика', 'Физика', 1, 35, 10, 3),
(4, 'Химия', 'Химия', 1, 25, 15, 4),
(5, 'История', 'Гуманитарные науки', 2, 20, 5, 5),
(6, 'Экономика', 'Экономика', 3, 30, 10, 6),
(7, 'Программирование на Java', 'Информатика', 2, 45, 25, 7),
(8, 'Теоретическая механика', 'Механика', 3, 30, 15, 8),
(9, 'Философия', 'Гуманитарные науки', 2, 25, 5, 9),
(10, 'Английский язык', 'Иностранные языки', 1, 20, 10, 10),
(11, 'Дифференциальные уравнения', 'Прикладная математика', 3, 30, 15, 1),
(12, 'Базы данных', 'Информатика', 3, 35, 20, 2),
(13, 'Оптика', 'Физика', 2, 30, 10, 3),
(14, 'Органическая химия', 'Химия', 2, 25, 15, 4),
(15, 'Социология', 'Гуманитарные науки', 3, 20, 5, 5);

INSERT INTO exams (exam_id, student_id, course_id, exam_date, grade) VALUES
(1, 1, 1, '2023-06-01', 5),
(2, 2, 1, '2023-06-01', 4),
(3, 3, 2, '2023-06-05', 5),
(4, 4, 2, '2023-06-05', 3),
(5, 5, 3, '2023-06-10', 4),
(6, 6, 3, '2023-06-10', 5),
(7, 7, 4, '2023-06-15', 2),
(8, 8, 4, '2023-06-15', 3),
(9, 9, 5, '2023-06-20', 5),
(10, 10, 5, '2023-06-20', 4),
(11, 11, 6, '2023-06-25', 3),
(12, 12, 6, '2023-06-25', 5),
(13, 13, 7, '2023-06-30', 4),
(14, 14, 7, '2023-06-30', 2),
(15, 15, 8, '2023-07-05', 5),
(16, 16, 8, '2023-07-05', 3),
(17, 17, 9, '2023-07-10', 4),
(18, 18, 9, '2023-07-10', 5),
(19, 19, 10, '2023-07-15', 3),
(20, 20, 10, '2023-07-15', 4),
-- Дополнительные попытки сдачи экзаменов
(21, 1, 2, '2023-07-20', 4),
(22, 1, 2, '2023-08-01', 5),
(23, 2, 3, '2023-07-22', 3),
(24, 2, 3, '2023-08-03', 4),
(25, 3, 1, '2023-07-25', 5),
(26, 3, 1, '2023-08-05', 5),
(27, 4, 4, '2023-07-27', 2),
(28, 4, 4, '2023-08-07', 3),
(29, 5, 5, '2023-07-30', 4),
(30, 5, 5, '2023-08-10', 5);
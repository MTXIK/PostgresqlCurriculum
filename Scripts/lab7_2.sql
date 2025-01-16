-- создаем таблицу teachers
create table teachers (
    teacher_id integer primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null
);

-- изменяем таблицу course, добавляя внешний ключ на teachers
alter table course
add column teacher_id integer not null,
add constraint fk_course_teacher
foreign key (teacher_id) references teachers(teacher_id);

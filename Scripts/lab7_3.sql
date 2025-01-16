drop table exams;

create table exams (
    exam_id integer primary key,
    student_id integer not null,
    course_id integer not null,
    exam_date date not null,
    grade integer not null,
    constraint exams_g check ((grade > 0) and (grade <= 5)),
    foreign key (student_id) references students(student_id) on delete cascade,
    foreign key (course_id) references course(course_id) on delete cascade
);

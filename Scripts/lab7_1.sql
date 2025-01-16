CREATE SCHEMA EDU;

create table exams(
	student_id integer,
	course_id integer,
	grade integer not null,
	constraint exams_g check((grade > 0) and (grade <= 5)),
	primary key(student_id, course_id),
	foreign key(student_id) references students(student_id) on delete cascade,
	foreign key(course_id) references course(course_id) on delete cascade	
);

create table students(
	student_id integer primary key,
	number_test_book varchar(255) not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null
);

create table course(
	course_id integer primary key,
	name varchar(255) not null,
	speciality varchar(255) not null,
	semester integer not null,
	lectures integer not null,
	lab_works integer not null
);
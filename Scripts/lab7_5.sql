create or replace view teacher_course_average_grades as
select
    t.first_name,
    t.last_name,
    c.course_id,
    c.name as course_name,
    round(avg(e.grade), 2) as average_grade
from
    teachers t
left join
    course c on t.teacher_id = c.teacher_id
left join
    exams e on c.course_id = e.course_id
group by
    t.first_name,
    t.last_name,
    c.course_id,
    c.name
order by
	c.course_id;

select * from teacher_course_average_grades;

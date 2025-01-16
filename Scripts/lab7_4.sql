create or replace view student_average_grades as
select
    s.student_id,
    s.first_name,
    s.last_name,
    round(avg(e.grade), 2) as average_grade
from
    students s
left join
    exams e on s.student_id = e.student_id
group by
    s.student_id,
    s.first_name,
    s.last_name;

SELECT * FROM student_average_grades;

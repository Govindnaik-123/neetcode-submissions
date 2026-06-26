-- Write your query below

select distinct  e1.student_id,e1.exam_id,e1.score from exam_results e1
where e1.score in (
    select max(e2.score) from exam_results e2
     where e1.student_id=e2.student_id )
     and e1.exam_id in (
        select min(e3.exam_id) from exam_results e3
        where e1.student_id=e3.student_id and e3.score=e1.score
     )
     order by e1.student_id;

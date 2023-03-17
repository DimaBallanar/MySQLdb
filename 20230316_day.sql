-- 19. Отобразите всех студентов, возраст которых больше 19 и обучающихся в
-- университете с наибольшим количеством студентов
use universityDB;

select un.title, st.name, st.surname, st.age,un.title from students st
join university un
on un.id=st.university_id
where
where st.age>19
 group by un.id,st.id
order by un.id


-- Select * from university;
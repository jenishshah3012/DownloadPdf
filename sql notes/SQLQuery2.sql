use jenish 

select * from Student_Marks
select top 3 f_name ,l_name ,(maths+Science+Social_Studies+English) as total from Student_Marks order by total desc
--Update Student_Marks set Science=100,Social_Studies=99,English=98 where RL=1
--Update Student_Marks set Science=0,Social_Studies=09,English=18 where RL=2
--Update Student_Marks set Social_Studies=100 where RL=5
--create table hi(id int identity (1,1))

ALTER TABLE hi add name varchar(255)

insert into hi VALUES('jenish')

select top 3 from hi
select * from Student_Marks
select * from student
select * from delete_log
--create table delete_log(name varchar(50),time date)

--create trigger result
--on student_marks
--after insert
--as
--insert into student (std_name,rollno,marks) select f_name ,rl ,(maths+science+social_studies+english) from inserted

--insert into Student_Marks values ('jenish','shah',98,95,53,75,1)

--alter table delete_log drop column time
--alter table delete_log add date_time datetime
--delete from Student_Marks
--create trigger del_log
--on student_marks
--after delete
--as
--declare @name  varchar(20)=(select f_name from deleted)
--insert into delete_log values (@name,SYSDATETIME())
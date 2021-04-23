Use jenish
Create Table Student_Marks (f_Name Varchar(20)Not null,L_name Varchar (20)Not null,Maths Int,Science int,Social_Studies int, English int,Constraint pk Primary  Key(f_name,L_name))

--Insert into student_marks values ('Chirag','Badani',20,90,80,100)
--Insert into student_marks values ('Vatsal','Dharod',20,90,80,97)
--Insert into student_marks values ('Jenish','Shah',0,98,87,85)
--Insert into Student_Marks values ('Bhavesh','Malhotra',50,80,88,null)
Select*from Student_Marks
Insert into student_marks (RL,F_Name,L_Name,english) values (5,'Vatsal','Dharod',85)
alter table  student_marks 
add CONSTRAINT vatsal default for Maths
Alter table Student_Marks add constraint ccc default 30 for science
insert into Student_Marks values ('chirag','badani',38,50,42,98,7)
Truncate table student_details
Create Table Student_Details (F_Name varchar (20) ,L_Name Varchar (20),Age Tinyint,Addr Varchar (500),rl int Foreign key references Student_marks(rl))
alter table student_details
alter column rl int IDENTITY(1,1)
ALTER TABLE student_details ADD rl INT IDENTITY(1, 1) unique

alter table Student_marks add RL int Primary key
Create table info (Name varchar(2) ,rl int foreign key References student_marks (RL),addr varchar(500)) 


select * from Student_Details where not gender='female'


--Alter table Student_DEtails add Gender Char (6) default 'Male';
--Insert into Student_Details values ('Chirag','Badani',16,'Devka_palace in_mamletdarwadi',1,'Male')
--Insert into Student_Details values ('Vinit','Dhobi',16,'New sai darshan in_mamletdarwadi',2,'Male')
--Insert into Student_Details values ('Rishit','Agrawal',16,'New sai darshan in_mamletdarwadi',6,'Male')
--Insert into Student_Details values ('Deeya','Sanghavi',16,'sai darshan complex in_mamletdarwadi',4,'Female')
--Insert into Student_Details values ('Zeel','Jain',13,'Parsh Galaxy in_mamletdarwadi',5,'Female')



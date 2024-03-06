create database baitonghop;
use baitonghop;
create table Students(
StudentID int(4) primary key auto_increment,
StudentName varchar(50),
age int check(age between 0 and 1000),
Email varchar(100)
);
create table Subject(
SubjectID int primary key auto_increment,
SubjectName varchar(50)
);
create table classes(
classID int primary key auto_increment,
classesName varchar(50)
);
create table Marks(
Mark int,
SubjectID int ,
foreign key(SubjectID) references Subject(SubjectID),
StudentID int ,
foreign key(StudentID) references students(StudentID),
primary key(SubjectID,StudentID)
);
create table classStudent(
StudentID int ,
foreign key(StudentID) references students(StudentID),
ClassID int ,
foreign key(ClassID) references classes(classID)
);
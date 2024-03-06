use baitonghop;
insert into Students(StudentID,StudentName,Age,Email)
value(1,"Nguyen Quang An",18,"an@yahoo.com"),
(2,"Nguyen Cong Vinh",20,"vinh@gmail.com"),
(3,"Nguyen Van Quyen",19,"quen@gmail.com"),
(4,"Pham Thanh Binh",25,"binh@gmail.com"),
(5,"Nguyen Van Tai Em",30,"taiem@sport.vn");
insert into classes (classID,classesName)
value(1,"C0706L"),(2,"C0708G");
insert into ClassStudent(StudentID,classID)
value(1,1),(2,1),(3,2),(4,2),(5,2);
insert into Subject(SubjectID,SubjectName)
value(1,"SQL"),(2,"Java"),(3,"C"),(4,"Visual Basic");

insert into Marks(Mark,SubjectID,StudentID)
value
(4,2,1)
,(9,1,1),(7,1,3),(3,1,4),(5,2,5),(8,3,3),(1,3,5),(3,2,4);
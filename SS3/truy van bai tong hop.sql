#truy van
use baitonghop;
select * from students;
select* from subject;
SELECT
    Students.StudentID,
    Students.StudentName,
    AVG(Marks.Mark) AS AverageMark
FROM
    Students
JOIN Marks ON Students.StudentID = Marks.StudentID
GROUP BY
    Students.StudentID;
    
    
SELECT
    Subject.SubjectName,
    MAX(Marks.Mark) AS MaxMark
FROM
    Students
JOIN Marks ON Students.StudentID = Marks.StudentID
JOIN Subject ON Marks.SubjectID = Subject.SubjectID
GROUP BY
    Subject.Subjectid;
    
select Sub.Subjectname,M.Mark ,row_number() over(order by Mark desc) as 'rank'
from marks M join subject Sub on M.SubjectID 
 ;
 
 alter table subject 
 modify column SubjectName varchar(255);
 
  
 update subject set SubjectName=concat( "Đây là môn học",subjectname);

#Viết Check Constraint để kiểm tra độ tuổi nhập vào trong bảng Student yêu cầu Age >15 và Age < 50.
alter table students 
modify column age int check(age >15 and age<50);
#Loại bỏ quan hệ giữa tất cả các bảng.
-- Loại bỏ ràng buộc khóa ngoại từ bảng Marks
ALTER TABLE Marks
DROP FOREIGN KEY marks_ibfk_2;
-- Loại bỏ ràng buộc khóa ngoại từ bảng classStudent
ALTER TABLE classStudent
DROP FOREIGN KEY classStudent_ibfk_1;
#Xóa học viên StudentID là 1.
delete from	students where studentid=1;
#Trong bảng Student thêm một column Status có kiểu dữ liệu là Bit và có giá trị Default là 1.
alter table Students 
add column status bit default 1;
#Cập nhật giá trị Status trong bảng Student thành 0.
update students set status =0;

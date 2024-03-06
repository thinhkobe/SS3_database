USE QuanLySinhVien;
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);
-- Bước 3: Thêm dữ liệu vào trong bảng Student bằng các câu lệnh insert into như sau:
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
-- Bước 4: Thêm dữ liệu nhanh vào trong bảng Subject:
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
-- Bước 5: Thêm dữ liệu vào trong bảng Mark bằng câu lệnh insert into như sau:
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select S.studentID,S.studentName,Sub.SubName,M.Mark
from Student S join Mark M on S.studentID=M.studentID
join Subject Sub on M.SubID=Sub.SubID
where Sub.SubName='CF';
select *
from Student where Student.studentname like 'h%';
select*
from Class where DATE_FORMAT(startdate, '%m') = '12';

select*
from subject  where credit between 3 and 5;

update Student set ClassId=2 where StudentName='Hung';
select S.studentName,Sub.SubName,M.Mark
from student S 
join mark M on m.studentID=S.studentID
join subject sub on M.SubId=sub.SubId;



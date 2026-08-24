DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
    StudentID INTEGER PRIMARY KEY,
    StudentName TEXT NOT NULL,
    DepartmentID INTEGER NOT NULL
);

INSERT INTO Student (StudentID, StudentName, DepartmentID)
VALUES
    (1001, 'Arun', 101),
    (1002, 'Bala', 102),
    (1003, 'Karthik', 101),
    (1004, 'Divya', 103),
    (1005, 'Hari', 102);

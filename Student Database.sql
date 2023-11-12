
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
)

INSERT INTO Classes (ClassID, ClassName)
VALUES
    (101, 'Class 1A'),
    (102, 'Class 1B'),
    (201, 'Class 2A'),
    (202, 'Class 2B')

	select * from Classes


CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50)
)

INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'English'),
    (4, 'History')

	select * from Subjects

-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    ClassID INT,
    CONSTRAINT FK_Students_Classes FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
)

INSERT INTO Students (StudentID, FirstName, LastName, DateOfBirth, ClassID)
VALUES
    (1, 'John', 'Doe', '2005-03-15', 101),
    (2, 'Jane', 'Smith', '2006-05-20', 101),
    (3, 'Bob', 'Johnson', '2005-11-10', 102),
    (4, 'Alice', 'Williams', '2006-02-25', 201),
    (5, 'Charlie', 'Brown', '2005-09-08', 202)

	select * from Students


CREATE INDEX IX_Classes_ClassName ON Classes(ClassName);

--SET SHOWPLAN_XML ON

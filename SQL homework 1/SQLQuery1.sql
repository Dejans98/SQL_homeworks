CREATE DATABASE SEDCACADEMYDB
GO

USE SEDCACADEMYDB
GO

CREATE TABLE Students(
StudentId INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR (50) NOT NULL,
BirthDate DATE NOT NULL,
EnrolledDate DATE NOT NULL,
Gender NVARCHAR(50) NULL,
NationalIdNumber INT NOT NULL,
StudentCardNumber INT NOT NULL
)

INSERT INTO [Students]([StudentId],[FirstName],[LastName],[BirthDate],[EnrolledDate],[Gender],[NationalIdNumber],[StudentCardNumber])
VALUES(1,'Dejan','Spasovski','08/03/1998','08/03/2019','M',2,3)
SELECT * FROM Students


CREATE TABLE Teachers(
TeacherId INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR (50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
DateOfBirth DATE NOT NULL,
AcademicRank NVARCHAR (50) NOT NULL,
HireDate DATE NOT NULL
)
INSERT INTO [Teachers]([TeacherId],[FirstName],[LastName],[DateOfBirth],[AcademicRank],[HireDate])
VALUES(2,'Brankica','Pavlovska','08/03/1997','Profesor','08/03/2020')
SELECT * FROM Teachers

CREATE TABLE Grade(
GradeId INT PRIMARY KEY NOT NULL,
StudentId INT NOT NULL,
CourseId INT NOT NULL,
TeacherId INT NOT NULL,
Grade INT NOT NULL,
Comment NVARCHAR(100) NULL,
CreatedDate DATE NULL
)
INSERT INTO [Grade] ([GradeId],[StudentId],[CourseId],[TeacherId],[Grade],[Comment],[CreatedDate])
VALUES(4,3,5,6,10,'Great Job','08/03/1996')
SELECT * FROM Grade

CREATE TABLE Courses(
CourseId INT PRIMARY KEY NOT NULL,
CourseName NVARCHAR(100) NULL,
Credit INT NULL,
AcademicYear INT NOT NULL,
Semester INT NOT NULL
)
INSERT INTO [Courses]([CourseId],[AcademicYear],[Semester])
VALUES (2,1,3)
SELECT * FROM Courses


CREATE TABLE GradeDatails (
GradeDetails INT PRIMARY KEY NOT NULL,
GradeId INT NOT NULL,
AchievmentTypeId INT NULL,
AchievmentsPoints INT NULL,
AchievmentsMaxPoints INT NULL,
AchievmentsDate INT NULL
)
INSERT INTO [GradeDatails]([GradeDetails],[GradeId])
VALUES(4,3)
SELECT * FROM GradeDatails

CREATE TABLE AchievmentType(
AchievementType INT PRIMARY KEY NOT NULL,
Name NVARCHAR (50) NOT NULL ,
Description NVARCHAR (100) NULL,
ParticipationRate INT NOT NULL 
)

INSERT INTO [AchievmentType]([AchievementType],[Name],[Description],[ParticipationRate])
VALUES (3,'Homework','Final exam',4)
SELECT * FROM AchievmentType
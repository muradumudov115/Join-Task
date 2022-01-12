
--Self Join
USE PERSON
CREATE TABLE Positions(
Id int identity primary key,
Mission nvarchar(150) NOT NULL,
DependOn int 
)

SELECT p1.Mission,p2.Mission 'Depend On' FROM Positions p1
 JOIN 
Positions p2
ON
p1.DependOn=p2.Id

--Non Equi Join
CREATE TABLE Students(
Id int identity primary key,
Name nvarchar(50) NOT NULL,
Surname nvarchar(50),
Age int,
)

CREATE TABLE IELTSGrades(
  Id int identity primary key,
  Letter nvarchar(50),
  MinIELTSGrades decimal(10,2) check(MinIELTSGrades>=0 AND MinIELTSGrades<=9 ),
  MaxIELTSGrades decimal(10,2) check(MaxIELTSGrades>=0 AND MaxIELTSGrades<=9 )
)

ALTER TABLE Students
ADD Point int check(Point>=0 AND MaxIELTSGrades<=10)


--CROSS JOIN

CREATE TABLE Products(
  Id int identity primary key,
  Name nvarchar(100),
 )

 CREATE TABLE Memorys(
  Id int identity primary key,
  Memorys nvarchar(10) NOT NULL,
)

SELECT * FROM Products
CROSS JOIN
Memorys


if db_id('TestDev') is null
	create Database TestDev;

	Go
create table FakeUser
(ID INT IDENTITY (1,1) PRIMARY KEY,
FirstName varchar(75),
 LastName varchar(75),
 )

 CREATE TABLE DEPARTMENT
 (ID INT IDENTITY (1,1) PRIMARY KEY,
 Name varchar(75))

 CREATE TABLE Branch
 (ID INT IDENTITY (1,1) PRIMARY KEY,
 BranchName varchar(125),
 BranchAddress varchar(125))

 create table Employee(
 EmployeeId int foreign key REFERENCES FakeUser(id),
 DepartmentId int foreign key REFERENCES Department(id),
 BranchId  int foreign key REFERENCES Branch(id),)


 insert into FakeUser(FirstName,LastName)
			VALUES('Tom','Riddler'),
			      ('Shania','Twain'),
				  ('Shandra','Bullock'),
				  ('Dark','Knight'),
				  ('Strawberry','Kiwi'),
				  ('Alfred','Simons')

INSERT INTO DEPARTMENT(Name) 
			Values('Analytics'),
				  ('Development'),
				  ('Tech Support'),
				  ('Janitor'),
				  ('Management')

INSERT INTO Branch(BranchName, BranchAddress)
			VALUES('New York','125 Dont Know LN'),
			      ('OdenVille','404 Not Found Here'),
				  ('Basoon', '200 Red Planet Way')

INSERT INTO Employee(EmployeeId,DepartmentId,BranchId)
					VALUES(1,1,1),
						   (2,2,2),
						   (3,3,3),
						   (4,4,1),
						   (5,5,2)

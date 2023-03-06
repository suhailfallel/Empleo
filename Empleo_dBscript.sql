create database Empleo

use Empleo

create table CompanyDetails
(
Company_Id int,
Company_Name varchar(50),
Company_Type varchar(20),
DateofEstablish DateTime,
Company_Address varchar(200),
Company_City varchar(50),
Company_Country varchar(50),
Company_ContactNo bigint,
Company_Person varchar(50),
Company_Email varchar(80),
Username varchar(50),
Password varchar(50),
Status varchar(20))

create table LoginCredentials
(
Id int,
RegId int,
Username varchar(80),
Password varchar(50),
Role varchar(30),
Status varchar(20))

create table SeekerDetails
(
Seeker_Id int,
Seeker_FirstName varchar(20),
Seeker_LastName varchar(20),
Seeker_DateofBirth DateTime,
Highest_Education varchar(20),
Seeker_Email varchar(80),
Seeker_Address varchar(100),
Seeker_District varchar(20),
Seeker_State varchar(20),
Seeker_ContactNo bigint,
Resume varchar(50),
Username varchar(50),
Password varchar(50))

create table JobDetails
(
Job_Id int,
Company_Id int,
Company_Name varchar(50),
Post_Name varchar(50),
Job_Location varchar(50),
Experience varchar(50),
Salary bigint,
Qualification varchar(50),
Skills varchar(100),
Posted_Date DateTime,
Status varchar(20),
primary key(Job_Id),
foreign key(Company_Id) references CompanyDetails(Company_Id))

select * from SeekerDetails
select * from LoginCredentials


/****** Object:  StoredProcedure [dbo].[SeekerInsert]    Script Date: 30/4/2022 8:25:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SeekerInsert
(
@Seeker_FirstName as varchar(20),
@Seeker_LastName as varchar(20),
@Seeker_DateofBirth as datetime,
@Highest_Education as varchar(20),
@Seeker_Email as varchar(80),
@Seeker_Address as varchar(100),
@Seeker_District as varchar(20),
@Seeker_State as varchar(20),
@Seeker_ContactNo as bigint,
@Resume as varchar(50),
@Username as varchar(50),
@Password as varchar(50))
as
begin
begin transaction
declare @result as varchar(50), @exist as int, @Email as varchar(80), @RegId as int
set @exist = (select count(*) from SeekerDetails where (Seeker_Email=@Seeker_Email or Username=@Username) and Status='A')
if(@exist>0)
begin
	set @result='Already Exist'
end
else
begin
	insert into SeekerDetails(Seeker_FirstName, Seeker_LastName, Seeker_DateofBirth, Highest_Education, Seeker_Email,Seeker_Address, Seeker_District, Seeker_State, Seeker_ContactNo, Resume, Username, Password, Status)
	values(@Seeker_FirstName, @Seeker_LastName, @Seeker_DateofBirth, @Highest_Education, @Seeker_Email, @Seeker_Address, @Seeker_District, @Seeker_State, @Seeker_ContactNo, @Resume, @Username, @Password, 'A')
	set @Email=(select Seeker_Email from SeekerDetails where Username=@Username)
	set @RegId=(select Seeker_Id from SeekerDetails where Username=@Username)
	insert into LoginCredentials(RegId, Username, Password, Email, Role, Status)
	values (@RegId, @Username, @Password, @Email, 'Seeker', 'A')
	if(@@error>0)
	begin
		set @result='Error'
		rollback transaction
	end
	else
	begin
		set @result='Success'
	end
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[CompanyInsert]    Script Date: 30/4/2022 8:25:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc CompanyInsert
(
@Company_Name as varchar(50),
@Company_Type as varchar(50),
@DateofEstalish as datetime,
@Company_Address as varchar(200),
@Company_City as varchar(50),
@Company_Country as varchar(50),
@Company_ContactNo as bigint,
@Company_Person as varchar(50),
@Company_Email as varchar(80),
@Username as varchar(50),
@Password as varchar(50))
as
begin
begin transaction
declare @result as varchar(50), @exist as int, @Email as varchar(80), @RegId as int
set @exist=(select count(*) from CompanyDetails where( Company_Email=@Company_Email or Username=@Username) and Status='A')
if(@exist>0)
begin
	set @result='Already Exist'
end
else
begin
	insert into CompanyDetails(Company_Name, Company_Type, DateofEstablish, Company_Address, Company_City, Company_Country, Company_ContactNo, Company_Person, Company_Email, Username, Password, Status)
	values (@Company_Name, @Company_Type, @DateofEstalish, @Company_Address, @Company_City, @Company_Country, @Company_ContactNo, @Company_Person, @Company_Email, @Username, @Password, 'B')
	set @Email=(select Company_Email from CompanyDetails where Username=@Username) 
	set @RegId=(select Company_Id from CompanyDetails where Username=@Username)
	insert into LoginCredentials(RegId, Username, Password, Email, Role, Status)
	values(@RegId, @Username, @Password, @Email, 'Provider','B')
	if(@@error>0)
	begin
		set @result='Error'
		rollback transaction
	end
	else
	begin
		set @result='Success'
	end
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[AdminDelete]    Script Date: 01/5/2022 1:38:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc AdminDelete
(
@id as int)
as
begin
begin transaction
declare @result as varchar(20)
update LoginCredentials set Status='D' where Id=@id
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[AdminInsert]    Script Date: 01/5/2022 1:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc AdminInsert
(
@username as varchar(50),
@password as varchar(50),
@email as varchar(80))
as
begin
begin transaction
declare @result as varchar(20), @exist as int, @regid as int
set @exist=(select count(*) from LoginCredentials where Username=@username)
if(@exist>0)
begin
	set @result='Already Exist'
end
else
begin
	set @regid=(select isnull(max(RegId),0)+1 from LoginCredentials)
	insert into LoginCredentials(RegId, Username, Password, Email, Role, Status)
	values(@regid, @username, @password, @email, 'Admin', 'A')
	if(@@error>0)
	begin
		set @result='Error'
		rollback transaction
	end
	else
	begin
		set @result='Success'
	end
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[selectallAdmin]    Script Date: 01/5/2022 1:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectallAdmin
as
begin
select * from LoginCredentials where Status='A' and Role='Admin'
end
go

/****** Object:  StoredProcedure [dbo].[selectallSeeker]    Script Date: 05/5/2022 12:32:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectallSeeker
as
begin
select * from SeekerDetails
end
go

/****** Object:  StoredProcedure [dbo].[CompanyAccept]    Script Date: 06/5/2022 1:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc CompanyAccept
(
@Company_Id as int)
as
begin
begin transaction
declare @result as varchar(20)
update CompanyDetails set Status = 'A' where Company_Id=@Company_Id
update LoginCredentials set Status= 'A' where RegId=@Company_Id and Role='Provider'
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[CompanyDecline]    Script Date: 05/5/2022 2:33:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc CompnayDecline
(
@Company_Id as int)
as
begin
begin transaction
declare @result as varchar(20)
update CompanyDetails set Status='D' where Company_Id=@Company_Id
update LoginCredentials set Status='D' where RegId=@Company_Id and Role='Provider'
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[selectallCompany]    Script Date: 05/5/2022 2:41:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectallCompany
as
begin
select * from CompanyDetails
end
go

/****** Object:  StoredProcedure [dbo].[selectallJobs]    Script Date: 06/5/2022 03:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectallJobs
as
begin
select * from JobDetails
end
go

/****** Object:  StoredProcedure [dbo].[SeekerEdit]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc SeekerEdit
(
@Seeker_Id as int,
@Seeker_FirstName as varchar(50),
@Seeker_LastName as varchar(50),
@Seeker_DateofBirth as datetime,
@Highest_Education as varchar(50),
@Seeker_Email as varchar(80),
@Seeker_Address as varchar(50),
@Seeker_District as varchar(50),
@Seeker_State as varchar(50),
@Seeker_ContactNo as bigint,
@Resume as varchar(50))
as
begin
begin transaction
declare @result as varchar(20)
update LoginCredentials set Email=@Seeker_Email where RegId=@Seeker_Id and Role='Seeker'
update SeekerDetails set Seeker_FirstName=@Seeker_FirstName, Seeker_LastName=@Seeker_LastName, Seeker_DateofBirth=@Seeker_DateofBirth, Highest_Education=@Highest_Education, Seeker_Email=@Seeker_Email, Seeker_Address=@Seeker_Address, Seeker_District=@Seeker_District, Seeker_State=@Seeker_State, Seeker_ContactNo=@Seeker_ContactNo, Resume=@Resume where Seeker_Id=@Seeker_Id
if(@@error>0)
begin
	set @result='Error' select * from LoginCredentials
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[SeekerPwdChange]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc SeekerPwdChange
(
@Seeker_Id as int,
@Username as varchar(50),
@Password as varchar(50))
as
begin
begin transaction
declare @result as varchar(20)
update LoginCredentials set Username=@Username, Password=@Password where RegId=@Seeker_Id and Role='Seeker'
update SeekerDetails set Username=@Username, Password=@Password where Seeker_Id=@Seeker_Id
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[selectseekerbyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectseekerbyId
(
@Seeker_Id as int)
as
begin
select * from SeekerDetails where Seeker_Id=@Seeker_Id
end
go

/****** Object:  StoredProcedure [dbo].[JobInsert]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc JobInsert
(
@Company_Id as int,
@Post_Name as varchar(50),
@Category as varchar(50),
@Job_Location as varchar(50),
@Experience as varchar(50),
@Salary as bigint,
@Qualification as varchar(50),
@Skills as varchar(50),
@Posted_Date as datetime)
as
begin
begin transaction
declare @result as varchar(50), @exist as int, @Company_Name as varchar(50)
set @exist=(select count(*) from JobDetails where Post_Name=@Post_Name)
if(@exist>0)
begin
	set @result='Already Exist'
end
else
begin
	set @Company_Name = (select Company_Name from CompanyDetails where Company_Id=@Company_Id)
	insert into JobDetails(Company_Id, Company_Name, Post_Name, Category, Job_Location, Experience, Salary, Qualification, Skills, Posted_Date, Status)
	values(@Company_Id, @Company_Name, @Post_Name, @Category, @Job_Location, @Experience, @Salary, @Qualification, @Skills, @Posted_Date, 'A')
	if(@@error>0)
	begin
		set @result = 'Error'
		rollback transaction
	end
	else
	begin
		set @result='Success'
	end
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[CompanyEdit]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc CompanyEdit
(
@Company_Id as int,
@Company_Name as varchar(50),
@Company_Type as varchar(50),
@DateofEstablish as datetime,
@Company_Address as varchar(50),
@Company_City as varchar(50),
@Company_Country as varchar(50),
@Company_ContactNo as bigint,
@Company_Person as varchar(50),
@Company_Email as varchar(80))
as
begin
begin transaction
declare @result as varchar(20)
update LoginCredentials set Email=@Company_Email where RegId=@Company_Id and Role='Provider'
update CompanyDetails set Company_Name=@Company_Name, Company_Type=@Company_Type, DateofEstablish=@DateofEstablish, Company_Address=@Company_Address,  Company_City=@Company_City, Company_ContactNo=@Company_ContactNo, Company_Person=@Company_Person, Company_Country=@Company_Country, Company_Email=@Company_Email where Company_Id=@Company_Id
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else
begin
	set @result='Success'
end
commit transaction
end
go

/****** Object:  StoredProcedure [dbo].[companychangePwd]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc companychangePwd
(
@Company_Id as int,
@Username as varchar(50),
@Password as varchar(50))
as
begin
begin transaction
declare @result as varchar(20)
update LoginCredentials set Username=@Username, Password=@Password where RegId=@Company_Id and Role='Provider'
update CompanyDetails set Username=@Username, Password=@Password where Company_Id=@Company_Id
if(@@error>0)
begin
	set @result='Error'
	rollback transaction
end
else 
begin
	set @result='Success'
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[selectcompanybyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc selectcompanybyId
(
@Company_Id as int)
as
begin
select * from CompanyDetails where Company_Id=@Company_Id
end
go

/****** Object:  StoredProcedure [dbo].[LoginCheck]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc LoginCheck
(
@Username as varchar(50),
@Password as varchar(50))
as
begin
begin transaction
declare @exist as int, @id as int, @result as varchar(100), @role as varchar(50), @status as varchar(10)
set @exist = (select count(*) from LoginCredentials where Username=@Username and Password=@Password and Status='A')
if(@exist>0)
begin
	set @role =(select Role from LoginCredentials where Username=@Username)
	set @status=(select Status from LoginCredentials where Username=@Username)
	set @id = (select RegId from LoginCredentials where Username=@Username)
	set  @result='Success,'+convert(varchar(50), @id)+','+@role+','+@status
end
else
begin
	set @id=0
	set @result='Failed,'+convert(varchar(50), @id)
end
commit transaction
select @result
end
go

select * from JobDetails
exec LoginCheck 'Bluestar','electrasblue'

create table ApplicationDetails
(
Application_Id int,
Applicant_Id int,
Job_Id int,
Post_Name varchar(50),
Applicant_Name varchar(50),
Applicant_Contact bigint,
Applicant_Email varchar(80),
Resume varchar(50),
Application_Time datetime,
Status varchar(10),
Message varchar(100),
primary key(Application_Id),
foreign key(Applicant_Id) references SeekerDetails(Seeker_Id),
foreign key(Job_Id) references JobDetails(Job_Id))

select * from JobDetails

/****** Object:  StoredProcedure [dbo].[JobUpdate]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc JobUpdate
(
@Job_Id as int,
@Post_Name as varchar(50),
@Category as varchar(50),
@Job_Location as varchar(50),
@Experience as varchar(50),
@Salary as varchar(50),
@Qualification as varchar(50),
@Skills as varchar(100),
@Posted_Date as datetime,
@Status as varchar(50))
as
begin
declare @result as varchar(50)
update JobDetails set Post_Name=@Post_Name, Category=@Category, Job_Location=@Job_Location, Experience=@Experience, Salary=@Salary, Qualification=@Qualification, Skills=@Skills, Posted_Date=@Posted_Date, Status=@Status where Job_Id=@Job_Id
select @result
end
go

/****** Object:  StoredProcedure [dbo].[JobDelete]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc JobDelete
(
@Job_Id as int)
as
begin
declare @result as varchar(50)
set @result='s'
Delete from JobDetails where Job_Id=@Job_Id
return @result
end
go

/****** Object:  StoredProcedure [dbo].[SelectJobsbyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SelectJobsbyId
(
@Company_Id as int)
as
begin
select * from JobDetails where Company_Id=@Company_Id
end
go

/****** Object:  StoredProcedure [dbo].[SelectJobbyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SelectJobbyId
(
@Job_Id as int)
as
begin
select * from JobDetails where Job_Id=@Job_Id
end
go

/****** Object:  StoredProcedure [dbo].[SelectJobConfirm]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SelectJobConfirm
(@Seeker_Id as int)
as
begin
select * from SeekerDetails where Seeker_Id=@Seeker_Id
end
go

/****** Object:  StoredProcedure [dbo].[Apply]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc Apply
(
@Job_Id as int,
@Seeker_Id as int,
@Application_Date as datetime)
as
begin
begin transaction
declare @result as varchar(20), @exist as int, @Postname as varchar(50), @Companyname as varchar(50), @Applicantname as varchar(50), @Applicantcontact as bigint, @Applicantemail as varchar(80), @resume as varchar(50)
set @exist=(select count(*) from ApplicationDetails where Job_Id=@Job_Id and Applicant_Id=@Seeker_Id)
if(@exist>0)
begin
	set @result='Already Exist'
end
else
begin
	set @Postname=(select Post_Name from JobDetails where Job_Id=@Job_Id)
	set @Companyname=(select Company_Name from JobDetails where Job_Id=@Job_Id)
	set @Applicantname=(select Seeker_FirstName+' '+Seeker_LastName from SeekerDetails where Seeker_Id=@Seeker_Id)
	set @Applicantcontact=(select Seeker_ContactNo from SeekerDetails where Seeker_Id=@Seeker_Id)
	set @Applicantemail=(select Seeker_Email from SeekerDetails where Seeker_Id=@Seeker_Id)
	set @resume=(select Resume from SeekerDetails where Seeker_Id=@Seeker_Id)
	insert into ApplicationDetails(Applicant_Id, Job_Id, Post_Name, Company_Name, Applicant_Name, Applicant_Contact, Applicant_Email, Resume, Application_Time, Status, Message)
	values(@Seeker_Id, @Job_Id, @Postname, @Companyname, @Applicantname, @Applicantcontact, @Applicantemail, @resume, @Application_Date, 'Pending', ' ')
	if(@@error>0)
	begin
		set @result='Error'
		rollback transaction
	end
	else
	begin
		Set @result='Success'
	end
end
commit transaction
select @result
end
go

/****** Object:  StoredProcedure [dbo].[SelectApplicationbyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SelectApplicationbyId
(
@Seeker_Id as int)
as
begin
select * from ApplicationDetails where Applicant_Id=@Seeker_Id
end
go

/****** Object:  StoredProcedure [dbo].[SelectApplicationCompanyId]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SelectApplicationCompanyId
(
@Company_Id as int)
as
begin
declare @Companyname as varchar(50)
set @Companyname=(select Company_Name from CompanyDetails where Company_Id=@Company_Id)
select * from ApplicationDetails where Company_Name=@Companyname
end
go

/****** Object:  StoredProcedure [dbo].[ApplicationAccept]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc ApplicationAccept
(
@Application_Id as int)
as
begin
update ApplicationDetails set Status='Selected',Message='Check Email for Further Procedures' where Application_Id=@Application_Id
end
go

/****** Object:  StoredProcedure [dbo].[ApplicationViewresume]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc ApplicationViewresume
(
@Application_Id as int)
as
begin
update ApplicationDetails set Status='Resume Viewed' where Application_Id=@Application_Id
end
go

/****** Object:  StoredProcedure [dbo].[ApplicationReject]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc ApplicationReject
(
@Application_Id as int)
as
begin
update ApplicationDetails set Status='Rejected' where Application_Id=@Application_Id
end
go

/****** Object:  StoredProcedure [dbo].[DropdownCompany]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc DropdownCompany
(
@Company_Id as int)
as
begin
declare @Companyname as varchar(50)
set @Companyname=(select Company_Name from CompanyDetails where Company_Id=@Company_Id)
select Post_Name from ApplicationDetails where Company_Name=@Companyname
end
go

/****** Object:  StoredProcedure [dbo].[FilterPost]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc FilterPost
(
@Post_Name as varchar(50))
as
begin
select * from ApplicationDetails where Post_Name=@Post_Name
end
go

/****** Object:  StoredProcedure [dbo].[SearchbyPostname]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc SearchbyPostname
(
@Post_Name as varchar(50))
as
begin
select * from JobDetails where Post_Name=@Post_Name
end
go

/****** Object:  StoredProcedure [dbo].[LocationFilter]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc LocationFilter
(
@Job_Location as varchar(50))
as
begin
select * from JobDetails where Job_Location=@Job_Location
end
go

/****** Object:  StoredProcedure [dbo].[CategoryFilter]    Script Date: 06/5/2022 02:25:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc CategoryFilter
(
@Category as varchar(50))
as
begin
select * from JobDetails where Category=@Category
end
go

select * from SeekerDetails
select * from CompanyDetails
select * from ApplicationDetails
select * from JobDetails
select * from LoginCredentials
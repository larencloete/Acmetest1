CREATE TABLE [dbo].[Employee]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY, 
    [PersonId] NCHAR(10) NOT NULL, 
    [EmployeeNum] NVARCHAR(16) NOT NULL, 
    [EmployedDate] DATE NOT NULL, 
    [Terminated] DATE NULL
)

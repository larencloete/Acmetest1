CREATE TABLE [dbo].[Person]
(
	[PersonId] INT NOT NULL PRIMARY KEY, 
    [LastName] NCHAR(128) NOT NULL, 
    [FirstName] NCHAR(128) NOT NULL, 
    [BirthDate] DATE NOT NULL
)

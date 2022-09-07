﻿/*
Deployment script for AcmeDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "AcmeDB"
:setvar DefaultFilePrefix "AcmeDB"
:setvar DefaultDataPath "C:\Users\laren\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\laren\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 70a7910f-f9c9-43c0-a466-0192fa9c1c76 is skipped, element [dbo].[Employee].[Id] (SqlSimpleColumn) will not be renamed to EmployeeId';


GO
PRINT N'Rename refactoring operation with key ee09a777-1d05-4319-8dce-aa0b4d563101 is skipped, element [dbo].[Employee].[Person] (SqlSimpleColumn) will not be renamed to PersonId';


GO
PRINT N'Rename refactoring operation with key 6ff3849c-2c91-4c40-b3d8-d09c9b47bcfe is skipped, element [dbo].[Employee].[EmployeeDate] (SqlSimpleColumn) will not be renamed to EmployedDate';


GO
PRINT N'Rename refactoring operation with key 024f7786-f09e-4636-a5e9-ff495368599f is skipped, element [dbo].[Person].[Id] (SqlSimpleColumn) will not be renamed to PersonId';


GO
PRINT N'Altering Table [dbo].[Employee]...';


GO
ALTER TABLE [dbo].[Employee] ALTER COLUMN [EmployeeNum] NVARCHAR (16) NOT NULL;

ALTER TABLE [dbo].[Employee] ALTER COLUMN [PersonId ] NCHAR (10) NOT NULL;


GO
-- Refactoring step to update target server with deployed transaction logs

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '70a7910f-f9c9-43c0-a466-0192fa9c1c76')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('70a7910f-f9c9-43c0-a466-0192fa9c1c76')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ee09a777-1d05-4319-8dce-aa0b4d563101')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ee09a777-1d05-4319-8dce-aa0b4d563101')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6ff3849c-2c91-4c40-b3d8-d09c9b47bcfe')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6ff3849c-2c91-4c40-b3d8-d09c9b47bcfe')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '024f7786-f09e-4636-a5e9-ff495368599f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('024f7786-f09e-4636-a5e9-ff495368599f')

GO

GO
PRINT N'Update complete.';


GO
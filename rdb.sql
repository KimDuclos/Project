-- Create a new database called 'rDatabase'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'rDatabase'
)
CREATE DATABASE rDatabase
GO

-- Create a new table called 'TableName' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('RDBschema.TableName', 'U') IS NOT NULL
DROP TABLE SchemaName.TableName
GO
-- Create the table in the specified schema
CREATE TABLE RDBschema.rCoach
(
    rCoach INT NOT NULL PRIMARY KEY, -- primary key column
    firstName [NVARCHAR](50) NOT NULL,
    lastName [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

SELECT FIRST_NAME firstName;
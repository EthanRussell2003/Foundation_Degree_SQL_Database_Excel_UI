--Create the Modification Log to track modifications to the database
CREATE TABLE ModificationLog(
LogID int PRIMARY KEY IDENTITY(1,1), --Primary key which automatically increments
TableAffected nvarchar(15) NOT NULL,
TypeOfChange nvarchar(10) NOT NULL,
TimestampOfChange dateTime NOT NULL
);

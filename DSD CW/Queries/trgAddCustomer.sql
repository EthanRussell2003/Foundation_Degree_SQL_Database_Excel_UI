--Adds to the modification log when insert is performed
CREATE TRIGGER trgAddCustomer ON Customer
FOR INSERT
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Customer', 'INSERT', GETDATE());
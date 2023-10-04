--Adds to the modification log when insert is performed
CREATE TRIGGER trgAddProduct ON Product
FOR INSERT
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Product', 'INSERT', GETDATE());
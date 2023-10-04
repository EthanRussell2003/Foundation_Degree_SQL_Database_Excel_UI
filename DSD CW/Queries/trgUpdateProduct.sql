--Adds to the modification log when update is performed
CREATE TRIGGER trgUpdateProduct ON Product
FOR UPDATE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Product', 'UPDATE', GETDATE());
--Adds to the modification log when delete is performed
CREATE TRIGGER trgDeleteProduct ON Product
FOR DELETE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Product', 'DELETE', GETDATE());
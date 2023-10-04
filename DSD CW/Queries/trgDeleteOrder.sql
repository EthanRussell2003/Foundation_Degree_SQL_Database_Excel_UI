--Adds to the modification log when delete is performed
CREATE TRIGGER trgDeleteOrder ON [Order]
FOR DELETE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Order', 'DELETE', GETDATE());
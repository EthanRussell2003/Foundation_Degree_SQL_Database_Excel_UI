--Adds to the modification log when delete is performed
CREATE TRIGGER trgDeleteOrderItem ON [Order Item]
FOR DELETE
AS
INSERT INTO ModificationLog(TableAffected, TypeOfChange, TimestampOfChange)
VALUES('Order Item', 'DELETE', GETDATE());
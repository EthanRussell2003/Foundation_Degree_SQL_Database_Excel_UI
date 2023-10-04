--Displays the log information
CREATE VIEW viewDatabaseModifications AS
SELECT LogID AS [Modification Number], TableAffected AS [Affected Table], TypeOfChange AS [Type of Change], TimestampOfChange AS [Date]
FROM ModificationLog;
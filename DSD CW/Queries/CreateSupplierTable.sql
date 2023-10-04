--Creates the supplier table
CREATE TABLE Supplier (
    SupplierID int PRIMARY KEY IDENTITY(1,1), --Primary key which automatically increments
    SupplierName nvarchar(50) NOT NULL,
    TelNo char(11) NOT NULL,
    Email nvarchar(60) --Optional field
);
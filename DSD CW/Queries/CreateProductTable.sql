--Create the product table
CREATE TABLE Product (
    ProductID int PRIMARY KEY IDENTITY(1,1), --Primary key which automatically increments
    ProductName nvarchar(50) NOT NULL,
    Brand nvarchar(50) NOT NULL,
    Make nvarchar(50), --Optional field
    Price money NOT NULL,
    Stock int NOT NULL,
    SupplierID int FOREIGN KEY REFERENCES Supplier(SupplierID) NOT NULL, --Foreign key from supplier table
    Discontinued bit NOT NULL
);
--Creates the Customer Table
CREATE TABLE Customer (
    CustomerID int PRIMARY KEY IDENTITY(1,1), --Primary Key which automatically increments
    Title nchar(10) NOT NULL,
    Forename nchar(30) NOT NULL,
    Surname nchar(40) NOT NULL,
    DOB date NOT NULL,
    Address1 nvarchar(50) NOT NULL,
    Address2 nvarchar(50),          --Optional field
    TownCity nvarchar(30) NOT NULL,
    Postcode nvarchar(10) NOT NULL,
    TelNo char(11) NOT NULL,
    Email nvarchar(60)              --Optional field
);
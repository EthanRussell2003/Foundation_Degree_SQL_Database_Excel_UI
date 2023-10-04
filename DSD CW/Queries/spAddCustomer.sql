--Allows user to add a new customer
CREATE PROCEDURE spAddCustomer
@Title nchar(10),
@Forename nchar(30),
@Surname nchar(40),
@DOB date,
@Address1 nvarchar(50),
@Address2 nvarchar(50),
@TownCity nvarchar(30),
@Postcode nvarchar(10),
@TelNo char(11),
@Email nvarchar(60)

AS

INSERT INTO Customer(Title, Forename, Surname, DOB, Address1, Address2, TownCity, Postcode, TelNo, Email)
VALUES(@Title, @Forename, @Surname, @DOB, @Address1, @Address2, @TownCity, @Postcode, @TelNo, @Email);
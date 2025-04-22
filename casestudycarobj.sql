CREATE SCHEMA CarRental AUTHORIZATION dbo;
GO


CREATE TABLE CarRental.Userr (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) UNIQUE NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    FullName NVARCHAR(100),
    Email NVARCHAR(100),
    Role NVARCHAR(20) CHECK (Role IN ('Admin', 'Customer')) NOT NULL
);



CREATE TABLE CarRental.Vehicle (
    VehicleID INT PRIMARY KEY IDENTITY(1,1),
    VehicleName NVARCHAR(50) NOT NULL,
    Brand NVARCHAR(50) NOT NULL,
    Model NVARCHAR(50) NOT NULL,
    RegistrationNumber NVARCHAR(20) UNIQUE NOT NULL,
    DailyRate DECIMAL(10, 2) NOT NULL,
    Status NVARCHAR(20) CHECK (Status IN ('Available', 'Rented')) DEFAULT 'Available'
);


CREATE TABLE CarRental.Rental (
    RentalID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES CarRental.Userr(UserID),
    VehicleID INT FOREIGN KEY REFERENCES CarRental.Vehicle(VehicleID),
    RentalDate DATE NOT NULL,
    ReturnDate DATE NULL,
    TotalAmount DECIMAL(10, 2) NULL,
    Status NVARCHAR(20) CHECK (Status IN ('Ongoing', 'Completed')) DEFAULT 'Ongoing'
);


CREATE TABLE CarRental.Payment (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    RentalID INT FOREIGN KEY REFERENCES CarRental.Rental(RentalID),
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod NVARCHAR(20) CHECK (PaymentMethod IN ('Credit Card', 'Debit Card', 'Cash')) NOT NULL
);

CREATE TABLE CarRental.Location (
    LocationID INT PRIMARY KEY IDENTITY(1,1),
    LocationName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200) NOT NULL
);




CREATE TABLE CarRental.VehicleLocation (
    VehicleID INT FOREIGN KEY REFERENCES CarRental.Vehicle(VehicleID),
    LocationID INT FOREIGN KEY REFERENCES CarRental.Location(LocationID),
    QuantityAvailable INT NOT NULL,
    PRIMARY KEY (VehicleID, LocationID)
);



SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CarRental';

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CarRental';




ALTER TABLE CarRental.VehicleLocation NOCHECK CONSTRAINT ALL;
ALTER TABLE CarRental.Payment NOCHECK CONSTRAINT ALL;
ALTER TABLE CarRental.Rental NOCHECK CONSTRAINT ALL;


DELETE FROM CarRental.VehicleLocation;
DELETE FROM CarRental.Payment;
DELETE FROM CarRental.Rental;
DELETE FROM CarRental.Vehicle;
DELETE FROM CarRental.Location;
DELETE FROM CarRental.Userr;


DBCC CHECKIDENT ('CarRental.Userr', RESEED, 0);
DBCC CHECKIDENT ('CarRental.Vehicle', RESEED, 0);
DBCC CHECKIDENT ('CarRental.Rental', RESEED, 0);
DBCC CHECKIDENT ('CarRental.Payment', RESEED, 0);
DBCC CHECKIDENT ('CarRental.Location', RESEED, 0);


ALTER TABLE CarRental.VehicleLocation CHECK CONSTRAINT ALL;
ALTER TABLE CarRental.Payment CHECK CONSTRAINT ALL;
ALTER TABLE CarRental.Rental CHECK CONSTRAINT ALL;

SELECT VehicleID, VehicleName, Status FROM CarRental.Vehicle WHERE VehicleID = 2;
UPDATE CarRental.Vehicle SET Status = 'Available' WHERE VehicleID = 2;

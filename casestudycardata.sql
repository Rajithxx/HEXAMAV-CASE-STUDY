
INSERT INTO CarRental.Userr (Username, Password, FullName, Email, Role) VALUES
('johnsmith', 'pass123', 'John Smith', 'john@example.com', 'Customer'),
('alicew', 'alice2023', 'Alice Williams', 'alice@example.com', 'Customer'),
('mikebrown', 'mike@456', 'Michael Brown', 'mike@example.com', 'Customer'),
('admin1', 'adminpass', 'System Admin', 'admin1@carrental.com', 'Admin'),
('davidlee', 'david789', 'David Lee', 'david@example.com', 'Customer'),
('sarahm', 'sarahm@2024', 'Sarah Miller', 'sarah@example.com', 'Customer'),
('admin2', 'admin@2025', 'Backup Admin', 'admin2@carrental.com', 'Admin'),
('linda.g', 'lindag!', 'Linda Green', 'linda@example.com', 'Customer'),
('tommyt', 'ttom!900', 'Tommy Turner', 'tommy@example.com', 'Customer'),
('bettyc', 'b3tty#car', 'Betty Carter', 'betty@example.com', 'Customer');


INSERT INTO CarRental.Vehicle (VehicleName, Brand, Model, RegistrationNumber, DailyRate, Status) VALUES
('City Cruiser', 'Honda', 'City', 'TN10AB1234', 350.00, 'Available'),
('SpeedX', 'Toyota', 'Corolla', 'TN10AB5678', 450.00, 'Available'),
('Urban Runner', 'Hyundai', 'i20', 'TN11AC9012', 385.50, 'Available'),
('EcoDrive', 'Tata', 'Nexon', 'TN12AD3456', 500.00, 'Rented'),
('SwiftGo', 'Maruti', 'Swift', 'TN13AE7890', 375.00, 'Available'),
('CompactPro', 'Ford', 'Figo', 'TN14AF4321', 420.00, 'Available'),
('CityZoom', 'Volkswagen', 'Polo', 'TN15AG6789', 475.50, 'Available'),
('DriveMax', 'Mahindra', 'XUV300', 'TN16AH2345', 555.00, 'Rented'),
('ComfortCruise', 'Renault', 'Kiger', 'TN17AI8765', 499.00, 'Available'),
('PulseDrive', 'Skoda', 'Rapid', 'TN18AJ1122', 530.00, 'Available');


INSERT INTO CarRental.Location (LocationName, Address) VALUES
('Downtown Branch', '123 Main St, Chennai'),
('Airport Center', 'Chennai International Airport, Gate 2'),
('Marina Spot', '45 Beach Rd, Marina, Chennai'),
('Velachery Branch', '67 Velachery High Rd, Chennai'),
('T Nagar Point', '12 North Usman Rd, T Nagar, Chennai'),
('Tambaram Center', '100 GST Rd, Tambaram, Chennai'),
('Adyar Office', '56 LB Rd, Adyar, Chennai'),
('OMR Hub', '22 OMR Rd, Sholinganallur, Chennai'),
('Mount Road', 'Mount Rd, Thousand Lights, Chennai'),
('Porur Depot', '88 Arcot Rd, Porur, Chennai');


INSERT INTO CarRental.VehicleLocation (VehicleID, LocationID, QuantityAvailable) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 3, 4),
(4, 4, 1),
(5, 5, 3),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 3),
(10, 10, 1);


INSERT INTO CarRental.Rental (UserID, VehicleID, RentalDate, ReturnDate, TotalAmount, Status) VALUES
(1, 1, '2024-12-01', '2024-12-05', 1400.00, 'Completed'),
(2, 2, '2024-12-10', '2024-12-12', 900.00, 'Completed'),
(3, 4, '2025-01-01', NULL, NULL, 'Ongoing'),
(5, 5, '2025-01-10', '2025-01-15', 1875.00, 'Completed'),
(6, 6, '2025-02-01', NULL, NULL, 'Ongoing'),
(8, 7, '2025-03-01', '2025-03-05', 1902.00, 'Completed'),
(9, 8, '2025-03-10', NULL, NULL, 'Ongoing'),
(10, 9, '2025-03-15', '2025-03-20', 2495.00, 'Completed'),
(2, 10, '2025-04-01', NULL, NULL, 'Ongoing'),
(4, 3, '2025-04-05', NULL, NULL, 'Ongoing');


INSERT INTO CarRental.Payment (RentalID, PaymentDate, Amount, PaymentMethod) VALUES
(1, '2024-12-05', 1400.00, 'Credit Card'),s
(2, '2024-12-12', 900.00, 'Cash'),
(4, '2025-01-15', 1875.00, 'Debit Card'),
(6, '2025-03-05', 1902.00, 'Credit Card'),
(8, '2025-03-20', 2495.00, 'Cash');

SELECT * FROM CarRental.Userr;
SELECT * FROM CarRental.Vehicle;
SELECT * FROM CarRental.Location;
SELECT * FROM CarRental.VehicleLocation;
SELECT * FROM CarRental.Payment;

create database HotelReservationSystem;
use HotelReservationSystem;
-- Create tables
CREATE TABLE IF NOT EXISTS Hotels (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    star_rating INT NOT NULL
);

-- Insert sample values into the Hotels table
INSERT INTO Hotels (name, address, city, country, star_rating) VALUES
('Hotel One', '123 Main Street', 'New York', 'USA', 4),
('Hotel Two', '456 Elm Street', 'Los Angeles', 'USA', 5),
('Hotel Three', '789 Oak Street', 'London', 'UK', 3);

-- Create the Rooms table
CREATE TABLE IF NOT EXISTS Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

-- Insert sample values into the Rooms table
INSERT INTO Rooms (hotel_id, room_type, capacity, price_per_night) VALUES
(1, 'Standard', 2, 100.00),
(1, 'Deluxe', 3, 150.00),
(2, 'Standard', 2, 120.00),
(2, 'Suite', 4, 250.00),
(3, 'Economy', 1, 80.00),
(3, 'Executive', 2, 200.00);

-- Create the Guests table
CREATE TABLE IF NOT EXISTS Guests (
    guest_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Insert sample values into the Guests table
INSERT INTO Guests (name, email, phone_number) VALUES
('John Smith', 'john@example.com', '123-456-7890'),
('Alice Johnson', 'alice@example.com', '987-654-3210'),
('Michael Brown', 'michael@example.com', '555-555-5555');

-- Create the Reservations table
CREATE TABLE IF NOT EXISTS Reservations (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Insert sample values into the Reservations table
INSERT INTO Reservations (guest_id, room_id, check_in_date, check_out_date, total_price) VALUES
(1, 1, '2024-04-10', '2024-04-15', 500.00),
(2, 4, '2024-05-01', '2024-05-05', 1000.00),
(3, 6, '2024-06-15', '2024-06-20', 1000.00);
  
  
  
  
  
  
  
   
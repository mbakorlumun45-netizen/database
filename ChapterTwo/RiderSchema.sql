CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Drivers(
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(30),
    rating TINYINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    total_rides INT NOT NULL DEFAULT 0 
);

CREATE TABLE Riders(
    rider_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(30),
    city VARCHAR(20)
);

CREATE TABLE Rides(
    ride_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    rider_id INT AUTO_INCREMENT PRIMARY KEY,
    fare DECIMAL(10,2) NOT NULL CHECK (fare >= 0),
    rating TINYINT NOT NULL CHECK (rating BETWEEN 1 AND 10),
    distance_km DECIMAL(10,2) NOT NULL CHECK (distance_km >= 0)
);

CREATE TABLE payments(
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    ride_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_method ENUM('cash', 'transfer', 'wallet', 'card') NOT NULL DEFAULT 'cash'
);


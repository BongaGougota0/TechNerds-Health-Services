CREATE SCHEMA `healthServicesDB`;

USE `healthServicesDB`;

CREATE TABLE IF NOT EXISTS `doctor` (
 `user_id` int AUTO_INCREMENT,
 `name` varchar(100) NOT NULL,
 `surname` varchar(100) NOT NULL,
 `phone_number` varchar(10) NOT NULL,
 `password` varchar(350) NOT NULL,
 `address_id` INT NOT NULL,
 PRIMARY KEY (`user_id`),
);

CREATE TABLE IF NOT EXISTS `patient` (
 `user_id` int AUTO_INCREMENT,
 `name` varchar(100) NOT NULL,
 `surname` varchar(100) NOT NULL,
 `phone_number` varchar(10) NOT NULL,
 `password` varchar(350) NOT NULL,
 `address_id` INT NOT NULL,
 PRIMARY KEY (`user_id`),
);

CREATE TABLE IF NOT EXISTS `admin_reception` (
 `user_id` int AUTO_INCREMENT,
 `name` varchar(100) NOT NULL,
 `surname` varchar(100) NOT NULL,
 `phone_number` varchar(10) NOT NULL,
 `password` varchar(350) NOT NULL,
 `address_id` INT NOT NULL,
 PRIMARY KEY (`user_id`),
);

CREATE TABLE IF NOT EXISTS `address` (
 `address_id` int AUTO_INCREMENT,
 `location_name` varchar(100) NOT NULL,
 `address_number` varchar(15) NOT NULL,
 `street_name` varchar(100) NOT NULL,
 `city` varchar(50) NOT NULL,
 `patient` INT NOT NULL,
 PRIMARY KEY (address_id),
 FOREIGN KEY (patient) REFERENCES patient(user_id),
);

CREATE TABLE IF NOT EXISTS `consultations` (
   `consultation_id` int AUTO_INCREMENT PRIMARY KEY,
   `consultation_comments` VARCHAR(500),
   `recurring_consulation` VARCHAR(5) NOT NULL,   -- Yes or No
   `online_consultation` VARCHAR(50) NULL,        -- True or False
   `consultation_date` VARCHAR(500) NULL,
   `doctor_id` int NOT NULL,
   `patient_id` int NOT NULL,
   FOREIGN KEY (product_store) REFERENCES doctor(user_id),
   FOREIGN KEY (product_store) REFERENCES patient(user_id)
);

CREATE TABLE IF NOT EXISTS `doctor_consultations` (
   `consultation_id` int AUTO_INCREMENT PRIMARY KEY,
   `consultation_status` VARCHAR(255) NOT NULL, -- Awaiting, Completed, resch. , Cancelled
   `doctor_id` int NOT NULL,
   `status` VARCHAR(255) NULL,
   `created_at` TIMESTAMP DEFAULT NULL,
   `closed_at` TIMESTAMP DEFAULT NULL,
   `reception_id` int NOT NULL,
   FOREIGN KEY (doctor_id) REFERENCES doctor(user_id),
   FOREIGN KEY (reception_id) REFERENCES admin_reception(user_id)
);

-- ==========================================
-- DWH ASSIGNMENT 1 - DATABASE SETUP SCRIPT
-- ==========================================

-- ------------------------------------------
-- PROBLEM 1: Air Quality Integration Target
-- ------------------------------------------
-- This table stores integrated data from CSV, XML, and MockAPI.
DROP TABLE IF EXISTS air_quality_Q1;
CREATE TABLE air_quality_Q1 (
    sensor_id VARCHAR(50),
    city VARCHAR(255),
    timestamp DATETIME,
    pm25 INT,
    pm10 INT,
    source_system VARCHAR(10)
);

-- ------------------------------------------
-- PROBLEM 3: Device Status Versioning (SCD)
-- ------------------------------------------

-- 1. Source Table (Input Data)
DROP TABLE IF EXISTS Device_Status;
CREATE TABLE Device_Status (
    Device_ID VARCHAR(50),
    Device_Type VARCHAR(50),
    Location VARCHAR(50),
    Status VARCHAR(50),
    Schedule_Date DATE
);

-- Insert initial test data for simulation
INSERT INTO Device_Status (Device_ID, Device_Type, Location, Status, Schedule_Date)
VALUES
('D101', 'Ventilator', 'ICU', 'Active', '2026-03-27'),
('D102', 'MRI', 'Radiology', 'Active', '2026-03-27'),
('D103', 'Pump', 'ER', 'Maintenance', '2026-03-27');

-- 2. Target Table (Versioning History)
DROP TABLE IF EXISTS Target_Device_History;
CREATE TABLE Target_Device_History (
    Device_Key INT IDENTITY(1,1) PRIMARY KEY,
    Device_ID VARCHAR(50),
    Device_Type VARCHAR(50),
    Location VARCHAR(50),
    Status VARCHAR(50),
    Insert_Date DATE,
    Active_Flag INT,
    Version_No INT
);

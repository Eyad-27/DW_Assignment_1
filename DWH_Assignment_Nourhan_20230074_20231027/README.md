# Data Warehousing Assignment 1 - SSIS Pipelines


## Project Structure
- **Problem_1**: Integration of Air Quality data from CSV, XML, and MockAPI into a unified SQL Server table.
- **Problem_3**: Implementation of a custom Snapshot Versioning system (SCD-style) for medical devices.

## Setup Instructions

### 1. Database Configuration
Before running the SSIS packages, you must set up the database environment:
1. Open **SQL Server Management Studio (SSMS)**.
2. Connect to your local SQL Server instance.
3. Open and execute the included `Database_Setup.sql` script. This will create all necessary source and target tables.

### 2. SSIS Project Setup
1. Open the solution file `DWH_Assignment_Nourhan_20230074_20231027.sln` in **Visual Studio**.
2. For each project, update the **Connection Managers** (OLE DB) to point to your local SQL Server instance.
3. **Problem 1 Note**: Ensure the file paths in the Flat File and XML Source Connection Managers point to the correct location of `Air_Quality.csv` and `Air_Quality.xml` on your machine.

## Authors
- Eyad Tamer -> 20230074 (Problem 1 & 3)
- Omnia Hassan -> 20231027 (Problem 2 & 4)

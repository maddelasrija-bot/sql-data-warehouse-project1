/*
===========================================
Create Database and Schemas
============================================
Script Purpose:
     This script creates a new database named 'DataWarehouse' after checking if it already exits.
    If the database exits it is dropped and recreated additionally, the script sets up three schemas
    within the database : 'bronze','silver','gold'

WARNING:
  Running this script will drop. the entire 'DataWarehouse' database ifexists.
  Alll dataa inn the database will be permanently deleted . Proceed withh caution
  nd ensure you have proper backups beforee running this script.
  */

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASES DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' Database
CREATE DATABASES DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA 'bronze'
GO
CREATE SCHEMA 'silver'
GO
CREATE SCHEMA 'gold'
GO

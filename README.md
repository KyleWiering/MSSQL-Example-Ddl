# MSSQL-Example-Ddl
This repository houses example file system structures for Schema files (and a schema) to generate a database within Microsoft Sql Studio

This project will not be able to deploy itself, but can be used to test deployment utilities.  Include this project in a Database Deployment utility and see if the proper database is created.

# Pre-requisites 
I used Sql Server Express 2014 http://www.microsoft.com/en-us/server-cloud/Products/sql-server-editions/sql-server-express.aspx

# Usage
Structured directories allow Database, Schema, Programmability and Table based Schema files.  This structure reduces the amount of 'failures' due to the way MSSQL deploys with multiple files.

# Note
MSSQL does not have a dependency chain for deployment.  It is based on an approach of try script 'a', if it fails, continue to script 'b' Until all base dependencies are resolved.  It then reruns on the remaining files until the same one fails twice, or, no more remain.
Additionally, there will be different structures of files for the same Database. I.e. one will house Foreign Keys beneath the table directories to prevent keys from being applied before tables are created.

# Validation
There will be a .bak file which was exported from the proper SQL schema database.  This can then be restored and schema compared against whatever utility restored the files in this project.
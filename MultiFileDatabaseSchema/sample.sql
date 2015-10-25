-- Instantiate the Database as the provided location with the given name.
-- Print whether it was created or already exists.
IF (
	EXISTS (
		SELECT name 
			FROM master.dbo.sysdatabases 
			WHERE name = N'$(name)'
	)
)
	BEGIN
		PRINT  N'$(name) Already Exists.';
	END
	ELSE
	BEGIN
	CREATE DATABASE [$(name)] ON  PRIMARY 
( NAME = N'$(name)', FILENAME = N'$(location)\$(name).mdf' , SIZE = 23552KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'$(name)_log', FILENAME = N'$(location)\$(name)_log.ldf' , SIZE = 29504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
		PRINT N'$(name) Created at $(location)';
	END
go



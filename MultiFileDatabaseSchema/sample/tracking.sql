if exists(
	SELECT  schema_name
		FROM    information_schema.schemata
		WHERE   schema_name = 'tracking'
)
begin
	print N'tracking Schema already exists';
end
else
begin
	EXEC sp_executesql N'CREATE SCHEMA [tracking]';
	print N'tracking Schema created';
end
go

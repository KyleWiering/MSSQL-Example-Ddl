if exists(
	SELECT  schema_name
		FROM    information_schema.schemata
		WHERE   schema_name = 'customer'
)
begin
	print N'Customer Schema already exists';
end
else
begin
	EXEC sp_executesql N'CREATE SCHEMA [customer]';
	print N'Customer Schema created';
end
go

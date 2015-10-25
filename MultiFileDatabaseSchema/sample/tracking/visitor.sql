IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'tracking' 
                 AND  TABLE_NAME = 'visitor'))
BEGIN
    print 'Table: tracking.visitor already exists.';
END
else
begin
	CREATE TABLE [tracking].visitor(
		visitorId BIGINT not null,
		firstVisitDate Datetime not null,
		customerId BIGINT null,
		ipAddress varchar(20)

		CONSTRAINT PK_CustomerVisitor_VisitorId PRIMARY KEY CLUSTERED (visitorId)
)  	

end
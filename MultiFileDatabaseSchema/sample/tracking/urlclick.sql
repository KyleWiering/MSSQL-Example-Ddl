IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'tracking' 
                 AND  TABLE_NAME = 'urlclick'))
BEGIN
    print 'Table: tracking.urlclick already exists.';
END
else
begin
	CREATE TABLE [tracking].urlclick(
		urlClickId BIGINT not null,
		visitorId BIGINT not null,
		createdDate datetime not null

		CONSTRAINT PK_CustomerUrlClick_UrlClickId PRIMARY KEY CLUSTERED (urlClickId)
)  	

end
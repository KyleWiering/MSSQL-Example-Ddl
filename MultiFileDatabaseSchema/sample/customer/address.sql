IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'customer' 
                 AND  TABLE_NAME = 'address'))
BEGIN
    print 'Table: customer.address already exists.';
END
else
begin
	CREATE TABLE [customer].[address](
		addressId BIGINT not null,
		customerId BIGINT not null,
		firstLineAddress nvarchar(100) not null,
		secondLineAddress nvarchar(100) null,
		zipcode int not null

		CONSTRAINT PK_CustomerAddress_AddressId PRIMARY KEY CLUSTERED (addressId)
)  	

end
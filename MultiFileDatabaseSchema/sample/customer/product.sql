IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'customer' 
                 AND  TABLE_NAME = 'product'))
BEGIN
    print 'Table: customer.product already exists.';
END
else
begin
	CREATE TABLE [customer].product(
		productId BIGINT not null,
		customerId BIGINT not null,
		upc int not null,
		cost decimal(20,2) not null,
		salePrice decimal(20,2) not null,
		
		CONSTRAINT PK_CustomerProduct_ProductId PRIMARY KEY CLUSTERED (productId)
)  	

end
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'customer' 
                 AND  TABLE_NAME = 'payment'))
BEGIN
    print 'Table: customer.payment already exists.';
END
else
begin
	CREATE TABLE [customer].payment(
		paymentId BIGINT not null,
		customerId BIGINT not null,
		addressId BIGINT not null,
		amount decimal(20,2),
		created datetime not null

		CONSTRAINT PK_CustomerPayment_PaymentId PRIMARY KEY CLUSTERED (paymentId)
)  	

end
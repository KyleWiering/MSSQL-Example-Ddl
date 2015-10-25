IF EXISTS(SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'[customer].[fk_payment_to_address]') 
             AND parent_object_id = OBJECT_ID(N'[customer].[payment]'))
BEGIN
print N'Constraint already exists fk_payment_to_address';
END
ELSE
BEGIN

ALTER TABLE [customer].payment
ADD CONSTRAINT fk_payment_to_address
FOREIGN KEY (addressId)
REFERENCES [customer].address(addressId)
PRINT N'Created constraint fk_payment_to_address';
END
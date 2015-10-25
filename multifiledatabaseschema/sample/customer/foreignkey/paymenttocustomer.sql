IF EXISTS(SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'[customer].[fk_payment_to_customer]') 
             AND parent_object_id = OBJECT_ID(N'[customer].[payment]'))
BEGIN
print N'Constraint already exists fk_payment_to_customer';
END
ELSE
BEGIN

ALTER TABLE [customer].payment
ADD CONSTRAINT fk_payment_to_customer
FOREIGN KEY (customerId)
REFERENCES [customer].customer(customerId)
PRINT N'Created constraint fk_payment_to_customer';
END
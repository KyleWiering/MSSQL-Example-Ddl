IF EXISTS(SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'[customer].[fk_address_to_customer]') 
             AND parent_object_id = OBJECT_ID(N'[customer].[address]'))
BEGIN
print N'Constraint already exists fk_address_to_customer';
END
ELSE
BEGIN

ALTER TABLE [customer].address
ADD CONSTRAINT fk_address_to_customer
FOREIGN KEY (customerId)
REFERENCES [customer].customer(customerId)
PRINT N'Created constraint fk_address_to_customer';
END
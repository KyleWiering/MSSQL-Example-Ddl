IF EXISTS(SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'[tracking].[fk_urlclick_visitor]') 
             AND parent_object_id = OBJECT_ID(N'[tracking].[urlclick]'))
BEGIN
print N'Constraint already exists';
END
ELSE
BEGIN

ALTER TABLE [tracking].urlclick
ADD CONSTRAINT fk_urlclick_visitor
FOREIGN KEY (visitorId)
REFERENCES [tracking].visitor(visitorId)
PRINT N'Created constraint fk_urlclick_visitor';
END
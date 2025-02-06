DECLARE @Trx1ID varchar(50)
DECLARE @Trx2ID varchar(50)
SET @Trx1ID = convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx1ID, 'R','2013-06-17T09:30:47.0')

Set @Trx2ID =convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx2ID,'R','2012-11-17 09:30:47.0') 

INSERT INTO [ICIS].[dbo].[ComplianceMonitoring] VALUES
('NJ001A000000000001',null,null,null,'INS',null,'2005-12-31','2005-12-31',null,null,'CBI','Investigation of Acme Industry',
null,null,null,'NJ000A000000000001','12345','Other','12345',null,null,null,null,null,null,null,null,'123','N',null,null,'NJ Initiative','user defined field 1','user defined field 2','user defined field 3','user defined field 4','user defined field 5','user defined field 6','2005-12-10',
'2005-12-10', null, null,null,'123',null,null,'EPA','Nonsensitive Comment1','Sensitive Comment1',null, 'N','DA',@Trx1ID)

INSERT INTO [ICIS].[dbo].[ComplianceMonitoring] VALUES
('NJ001A000000000002',null,null,null,'INS',null,'2005-12-31','2005-12-31',null,null,'CBI','Investigation of Acme Industry',
null,null,null,'NJ000A000000000001','12345','Other','12345',null,null,null,null,null,null,null,null,'123','N','N',null,'NJ Initiative','user defined field 1','user defined field 2','user defined field 3','user defined field 4','user defined field 5','user defined field 6','2005-12-10',
'2005-12-10', null, null,null,'123',null,null,'EPA','Nonsensitive Comment1','Sensitive Comment1',null,'N','DA',@Trx1ID)

INSERT INTO [ICIS].[dbo].[AirStackTestData] VALUES
('NJ001A000000000001','123','123','Stack or Unit Identifier','345','Other Purpose Name','789','2013-06-01','2013-06-15')

INSERT INTO [ICIS].[dbo].[AirStackTestData] VALUES
('NJ001A000000000002','123','123','Stack or Unit Identifier','345','Other Purpose Name','789','2013-06-01','2013-06-15')

INSERT INTO [ICIS].[dbo].[TestResultsData] VALUES
('200001407','123','345','100','79','90','789','Other Failure Reason','NJ001A000000000001')

INSERT INTO [ICIS].[dbo].[TestResultsData] VALUES
('200001407','123','345','100','79','90','789','Other Failure Reason','NJ001A000000000002')

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('IFR','John','Jane','Doe','Chief Executive Officer','Acme Products Inc.','AL','04','jdoe@acmeindustries.com','2005-12-31','2010-12-31')
INSERT INTO [ICIS].[dbo].[Telephone] VALUES (@@IDENTITY, 'OFF', '2025641000', '123')
INSERT INTO [ICIS].[dbo].[ComplianceMonitoringContact] VALUES ('NJ001A000000000001',@@IDENTITY)

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('IFR','John','Jane','Doe','Chief Executive Officer','Acme Products Inc.','AL','04','jdoe@acmeindustries.com','2005-12-31','2010-12-31')
INSERT INTO [ICIS].[dbo].[Telephone] VALUES (@@IDENTITY, 'OFF', '2025641000', '123')
INSERT INTO [ICIS].[dbo].[ComplianceMonitoringContact] VALUES ('NJ001A000000000002',@@IDENTITY)

Go


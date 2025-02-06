DECLARE @Trx1ID varchar(50)
DECLARE @Trx2ID varchar(50)
Begin Transaction
SET @Trx1ID = convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx1ID, 'R','2001-12-17T09:30:47.0')

Set @Trx2ID =convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx2ID,'R','2012-12-17 09:30:47.0') 

INSERT INTO [ICIS].[dbo].[ComplianceMonitoring] VALUES
('NJ001F000000000001','CAANESH','NJ0000000000000011','CAA','INF','COM','2005-12-31','2005-12-31',null,null,'CBI','Investigation of Acme Industry',
'CPI','STA','115',null,'CWACSO','Other',null,'Y','J','JNT','S',5,40,'14','UNS','78','N','Y','Special use',null,'user defined field 1',
'user defined field 2','user defined field 3','user defined field 4','user defined field 5','user defined field 6','2005-12-10',
'2005-12-10', '04', '311','WAT','72','EPA','Nonsensitive Comment1','Sensitive Comment1',null,null,'Federal',@Trx1ID )

INSERT INTO [ICIS].[dbo].[ComplianceMonitoring] VALUES
('NJ001F000000000002','CAANESH','NJ0000000000000011','CAA','INF','COM','2005-12-31','2005-12-31',null,null,'CBI','Investigation of Acme Industry',
'CPI','STA','115',null,'CWACSO','Other',null,'Y','J','JNT','S',5,40,'14','UNS','78','N','Y','Special use',null,'user defined field 1',
'user defined field 2','user defined field 3','user defined field 4','user defined field 5','user defined field 6','2005-12-10',
'2005-12-10', '04', '311','WAT','72','EPA','Nonsensitive Comment1','Sensitive Comment1',null,null,'Federal',@Trx1ID )

INSERT INTO [ICIS].[dbo].[SIC] VALUES ('2611','Y',null,'NJ001F000000000001')

INSERT INTO [ICIS].[dbo].[SIC] VALUES ('2612','N',null,'NJ001F000000000002')

INSERT INTO [ICIS].[dbo].[NAICS] VALUES ('322121','Y',null,'NJ001F000000000001')

INSERT INTO [ICIS].[dbo].[NAICS] VALUES ('322122','N',null,'NJ001F000000000002')

INSERT INTO [ICIS].[dbo].[AirStackTestData] VALUES
('NJ001F000000000001','123','123','Stack or Unit Identifier','345','Other Purpose Name','789','2013-06-01','2013-06-15')

INSERT INTO [ICIS].[dbo].[AirStackTestData] VALUES
('NJ001F000000000002','123','123','Stack or Unit Identifier','345','Other Purpose Name','789','2013-06-01','2013-06-15')

INSERT INTO [ICIS].[dbo].[TestResultsData] VALUES
('200001407','123','345','100','79','90','789','Other Failure Reason','NJ001F000000000001')

INSERT INTO [ICIS].[dbo].[TestResultsData] VALUES
('200001407','123','345','100','79','90','789','Other Failure Reason','NJ001F000000000002')

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('IFR','John','Jane','Doe','Chief Executive Officer','Acme Products Inc.','AL','04','jdoe@acmeindustries.com','2005-12-31','2010-12-31')
INSERT INTO [ICIS].[dbo].[Telephone] VALUES (@@IDENTITY, 'OFF', '2025641000', '123')
INSERT INTO [ICIS].[dbo].[ComplianceMonitoringContact] VALUES ('NJ001F000000000001',@@IDENTITY)

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('IFR','John','Jane','Doe','Chief Executive Officer','Acme Products Inc.','AL','04','jdoe@acmeindustries.com','2005-12-31','2010-12-31')
INSERT INTO [ICIS].[dbo].[Telephone] VALUES (@@IDENTITY, 'OFF', '2025641000', '123')
INSERT INTO [ICIS].[dbo].[ComplianceMonitoringContact] VALUES ('NJ001F000000000002',@@IDENTITY)

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('LTC',null,null,null,null,null,null,null,'jdoe@acmeindustries.com',null,null)
INSERT INTO [ICIS].[dbo].[InspectionGovernmentContact] VALUES ('NJ001F000000000001',@@IDENTITY)

INSERT INTO [ICIS].[dbo].[Contact] VALUES
('LTC',null,null,null,null,null,null,null,'jdoe@acmeindustries.com',null,null)
INSERT INTO [ICIS].[dbo].[InspectionGovernmentContact] VALUES ('NJ001F000000000002',@@IDENTITY)

Commit Transaction
go
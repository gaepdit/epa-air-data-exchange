DECLARE @Trx1ID varchar(50)
DECLARE @Trx2ID varchar(50)
SET @Trx1ID = convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx1ID, 'R','2013-06-17T09:30:47.0')

Set @Trx2ID =convert(varchar(50), NEWID())
INSERT INTO [ICIS].[dbo].[Transaction] VALUES (@Trx2ID,'R','2012-11-17 09:30:47.0') 

INSERT INTO [ICIS].[dbo].[AirComplianceMonitoringStrategy] VALUES
('NY001MK00000000001','001',2,'2010-05-01','Y','2010-05-01','Change Comments',@Trx1ID)

INSERT INTO [ICIS].[dbo].[AirComplianceMonitoringStrategy] VALUES
('NY001MK00000000002','001',2,'2010-05-01','Y','2010-05-01','Change Comments',@Trx2ID)

Go
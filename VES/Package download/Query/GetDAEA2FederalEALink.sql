SELECT  DAEA2FederalEALink.*, [Transaction].TransactionType, CONVERT(VARCHAR(30),[Transaction].TransactionTimestamp, 126) as TransactionTimestamp FROM  DAEA2FederalEALink INNER JOIN [Transaction] ON DAEA2FederalEALink.TransactionId = [Transaction].TransactionID INNER JOIN SubmissionStatus ON DAEA2FederalEALink.EnforcementActionId = SubmissionStatus.ID And SubmissionStatus.TableName='DAEA2FederalEALink' And SubmissionStatus.Status is null AND SubmissionStatus.operation <> 'delete' AND [Transaction].TransactionID = SubmissionStatus.TransactionID Where EnforcementActionId ='{$EnforcementActionId}'
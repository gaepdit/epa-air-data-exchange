SELECT [Transaction].TransactionId, 'X' as TransactionType, CONVERT(VARCHAR(30),[Transaction].TransactionTimestamp, 126) as TransactionTimestamp, SubmissionStatus.ID as EnforcementActionId, SubmissionStatus.ForeignKey as LinkedEAId  FROM  [Transaction] INNER JOIN SubmissionStatus ON [Transaction].TransactionID = SubmissionStatus.TransactionID And SubmissionStatus.Status is null AND SubmissionStatus.operation = 'delete' AND SubmissionStatus.TableName ='DAEA2FederalEALink' Where ID ='{$EnforcementActionId}'
SELECT        CaseFile.CaseFileId, CaseFile.CaseFileName, CaseFile.LeadAgencyCode, CaseFile.AirFacilityId, CaseFile.OtherProgramDescription, 
                         CaseFile.SensitiveDataIndicator, CaseFile.LeadAgencyChangeSuperseded, CaseFile.AdvisementMethodTypeCode, CaseFile.AdvisementMethodDate, 
                         CaseFile.CaseFileUserDefinedField1, CaseFile.CaseFileUserDefinedField2, CaseFile.CaseFileUserDefinedField3, CaseFile.CaseFileUserDefinedField4, 
                         CaseFile.CaseFileUserDefinedField5, CaseFile.CaseFileUserDefinedField6, CaseFile.TransactionID, CaseFileCode.CaseFileCodeId, CaseFileCode.CodeName, 
                         CaseFileCode.CodeValue, CaseFileComment.CaseFileCommentId, CaseFileComment.CommentName, CaseFileComment.CommentText, 
                         OtherPathwayActivityData.OtherPathwayActivityDataId, OtherPathwayActivityData.OtherPathwayCategoryCode, OtherPathwayActivityData.OtherPathwayTypeCode, 
                         OtherPathwayActivityData.OtherPathwayDate, AirViolationData.AirViolationDataId, AirViolationData.AirViolationTypeCode, AirViolationData.AirViolationProgramCode, 
                         AirViolationData.AirViolationProgramDescriptionText, AirViolationData.AirViolationPollutantCode, AirViolationData.FRVDeterminationDate, 
                         AirViolationData.HPVDayZeroDate, AirViolationData.OccurrenceStartDate, AirViolationData.OccurrenceEndDate, AirViolationData.HPVDesignationRemovalTypeCode, 
                         AirViolationData.HPVDesignationRemovalDate, [Transaction].TransactionType, CONVERT(VARCHAR(30),[Transaction].TransactionTimestamp, 126) as TransactionTimestamp
FROM            CaseFile INNER JOIN
                         CaseFileCode ON CaseFile.CaseFileId = CaseFileCode.CaseFileId LEFT JOIN
                         CaseFileComment ON CaseFile.CaseFileId = CaseFileComment.CaseFileId LEFT JOIN
                         OtherPathwayActivityData ON CaseFile.CaseFileId = OtherPathwayActivityData.CaseFileId LEFT JOIN
                         AirViolationData ON CaseFile.CaseFileId = AirViolationData.CaseFileId INNER JOIN
                         [Transaction] ON CaseFile.TransactionID = [Transaction].TransactionID INNER JOIN
                         SubmissionStatus ON [Transaction].TransactionID = SubmissionStatus.TransactionID
						 AND SubmissionStatus.TableName='CaseFile' AND SubmissionStatus.Status is NULL AND SubmissionStatus.Operation <> 'delete' WHERE  SubmissionStatus.ID in ('{$CaseFileID}') AND [Transaction].TransactionTimestamp between '{$fromDate}' and '{$toDate}'
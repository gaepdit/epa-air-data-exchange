# VESA scheduled tasks

## Deletions

|  # | Service                            | Associated Query                      | Test Node | Production Node |
|---:|------------------------------------|---------------------------------------|:---------:|:---------------:|
|  1 | SubmitDeletedCaseFileToCMLink      | GetDeletedCaseFileToCMLink            | Tue 07:05 |    Thu 07:05    |
|  2 | SubmitDeletedCaseFileToDAEALink    | GetDeletedCaseFileToDAEALink          | Tue 07:15 |    Thu 07:15    |
|  3 | SubmitDeletedDAFormalEAData        | GetDeletedDAFormalEnforcementAction   | Tue 07:25 |    Thu 07:25    |
|  4 | SubmitDeletedDAInFormalEAData      | GetDeletedDAInFormalEnforcementAction | Tue 07:35 |    Thu 07:35    |
|  5 | SubmitDeletedDACaseFile            | GetDeletedCaseFile                    | Tue 07:45 |    Thu 07:45    |
|  6 | DeleteAgencyComplianceMonitoring   | (DeleteAgencyComplianceMonitoring)    | Tue 07:55 |    Thu 07:55    |
|  7 | DeleteTVACC                        | (DeleteTVACC)                         | Tue 08:10 |    Thu 08:10    |
|  8 | DeleteComplianceMonitoringStrategy | (DeleteComplianceMonitoringStrategy)  | Tue 08:20 |    Thu 08:20    |
|  9 | DeleteAirPollutant                 | (DeleteAirPollutant)                  | Tue 08:30 |    Thu 08:30    |
| 10 | DeleteAirProgram                   | (DeleteAirProgram)                    | Tue 08:40 |    Thu 08:40    |
| 11 | DeleteAirFacility                  | (DeleteAirFacility)                   | Tue 08:50 |    Thu 08:50    |

## Additions

|   # | Service                            | Associated Query                | Test Node | Production Node |
| --: | ---------------------------------- | ------------------------------- | :-------: | :-------------: |
|  12 | SubmitAirFacilityData              | GetAirFacility                  | Tue 09:20 |    Thu 09:20    |
|  14 | SubmitAirProgramData               | GetAirProgram                   | Tue 10:10 |    Thu 10:10    |
|  13 | SubmitAirPollutantData             | GetAirPollutant                 | Tue 10:30 |    Thu 10:30    |
|  15 | SubmitComplianceMonitoringStrategy | GetComplianceMonitoringStrategy | Tue 10:50 |    Thu 10:50    |
|  16 | SubmitAgencyComplianceMonitoring   | GetAgencyComplianceMonitoring   | Tue 11:10 |    Thu 11:10    |
|  17 | SubmitTVACCData                    | GetTVACC                        | Tue 12:30 |    Thu 12:30    |
|  18 | SubmitDACaseFileData               | GetCaseFile                     | Tue 12:50 |    Thu 12:50    |
|  20 | SubmitCaseFile2CMLink              | GetCasefileToCMLink             | Tue 13:10 |    Thu 13:10    |
|  19 | SubmitDAFormalEAData               | GetDAFormalEnforcementAction    | Tue 13:30 |    Thu 13:30    |
|  21 | SubmitDAInFormalEAData             | GetDAInFormalEnforcementAction  | Tue 13:50 |    Thu 13:50    |
|  22 | SubmitCaseFile2DAEALink            | GetCasefileToDAEALink           | Tue 14:10 |    Thu 14:10    |
|  23 | SubmitEAMilestoneData              | GetDAEnforcementActionMileStone | Tue 14:30 |    Thu 14:30    |

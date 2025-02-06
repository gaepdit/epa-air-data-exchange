<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:v1="http://www.exchangenetwork.net/schema/dataset/2" exclude-result-prefixes="v1"
>
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
       <xsl:apply-templates select="/v1:DataSet"/>
    </xsl:template>
    <xsl:template match="v1:DataSet">
		<xsl:for-each select="v1:record[v1:ProgramSystemAcronym!=''][not(self::v1:record/v1:TransactionID=following-sibling::v1:record/v1:TransactionID)]">
			<xsl:variable name="TransactionID" select="v1:TransactionID"/>
		<FederalComplianceMonitoringData xmlns="http://www.exchangenetwork.net/schema/icis/5">
			<TransactionHeader>
				<TransactionType>
					<xsl:value-of select="v1:TransactionType" />
				</TransactionType>
				<TransactionTimestamp>
					<xsl:value-of select="v1:TransactionTimestamp" />
				</TransactionTimestamp>
			</TransactionHeader>
			<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][not(self::v1:record/v1:ComplianceMonitoringId=following-sibling::v1:record/v1:ComplianceMonitoringId)]">
            <xsl:variable name="ComplianceMonitoringId" select="v1:ComplianceMonitoringId"/>
			<FederalComplianceMonitoring>
					<ComplianceMonitoringIdentifier>
						<xsl:value-of select="v1:ComplianceMonitoringId" />
					</ComplianceMonitoringIdentifier>
					<ProgramSystemAcronym>
						<xsl:value-of select="v1:ProgramSystemAcronym" />
					</ProgramSystemAcronym>
					<ProgramSystemIdentifier>
						<xsl:value-of select="v1:ProgramSystemIdentifier" />
					</ProgramSystemIdentifier>
					<FederalStatuteCode>
						<xsl:value-of select="v1:FederalStatuteCode" />
					</FederalStatuteCode>
					<ComplianceMonitoringActivityTypeCode>
						<xsl:value-of select="v1:ActivityTypeCode" />
					</ComplianceMonitoringActivityTypeCode>
					<ComplianceMonitoringCategoryCode>
						<xsl:value-of select="v1:CategoryCode" />
					</ComplianceMonitoringCategoryCode>
					<ComplianceMonitoringDate>
						<xsl:value-of select="v1:ComplianceMonitoringDate" />
					</ComplianceMonitoringDate>
					<ComplianceMonitoringStartDate>
						<xsl:value-of select="v1:StartDate" />
					</ComplianceMonitoringStartDate>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='ComplianceInspectionTypeCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<ComplianceInspectionTypeCode>
						<xsl:value-of select="v1:CodeValue" />
					</ComplianceInspectionTypeCode>
					</xsl:for-each >
					<ComplianceMonitoringActivityName>
						<xsl:value-of select="v1:ActivityName" />
					</ComplianceMonitoringActivityName>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='ActionReasonCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<ComplianceMonitoringActionReasonCode>
						<xsl:value-of select="v1:CodeValue" />
					</ComplianceMonitoringActionReasonCode>
					</xsl:for-each >
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='AgencyTypeCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<ComplianceMonitoringAgencyTypeCode>
						<xsl:value-of select="v1:CodeValue" />
					</ComplianceMonitoringAgencyTypeCode>
					</xsl:for-each >
					<ComplianceMonitoringAgencyCode>
						<xsl:value-of select="v1:AgencyCode" />
					</ComplianceMonitoringAgencyCode>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='ProgramCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<ProgramCode>
						<xsl:value-of select="v1:CodeValue" />
					</ProgramCode>
					</xsl:for-each >
					<xsl:if test="v1:EPAAssistanceIndicator!= ''" >
					<EPAAssistanceIndicator>
						<xsl:value-of select="v1:EPAAssistanceIndicator" />
					</EPAAssistanceIndicator>
					</xsl:if>
					<xsl:if test="v1:StateFederalJointIndicator!= ''" >
					<StateFederalJointIndicator>
						<xsl:value-of select="v1:StateFederalJointIndicator" />
					</StateFederalJointIndicator>
					</xsl:if>
					<xsl:if test="v1:JointInspectionReasonCode!= ''" >
					<JointInspectionReasonCode>
						<xsl:value-of select="v1:JointInspectionReasonCode" />
					</JointInspectionReasonCode>
					</xsl:if>
					<xsl:if test="v1:LeadParty!= ''" >
					<LeadParty>
						<xsl:value-of select="v1:LeadParty" />
					</LeadParty>
					</xsl:if>
					<xsl:if test="v1:NumberDaysPhysicallyConductingActivity!= ''" >
					<NumberDaysPhysicallyConductingActivity>
						<xsl:value-of select="v1:Days" />
					</NumberDaysPhysicallyConductingActivity>
					</xsl:if>
					<xsl:if test="v1:NumberHoursPhysicallyConductingActivity!= ''" >
					<NumberHoursPhysicallyConductingActivity>
						<xsl:value-of select="v1:Hours" />
					</NumberHoursPhysicallyConductingActivity>
					</xsl:if>
					<xsl:if test="v1:ComplianceMonitoringActionOutcomeCode!= ''" >
					<ComplianceMonitoringActionOutcomeCode>
						<xsl:value-of select="v1:ActionOutcomeCode" />
					</ComplianceMonitoringActionOutcomeCode>
					</xsl:if>
					<xsl:if test="v1:InspectionRatingCode!= ''" >
					<InspectionRatingCode>
						<xsl:value-of select="v1:InspectionRatingCode" />
					</InspectionRatingCode>
					</xsl:if>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='NationalPrioritiesCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<NationalPrioritiesCode>
						<xsl:value-of select="v1:CodeValue" />
					</NationalPrioritiesCode>
					</xsl:for-each >
					<xsl:if test="v1:MultimediaIndicator!= ''" >
					<MultimediaIndicator>
						<xsl:value-of select="v1:MultimediaIndicator" />
					</MultimediaIndicator>
					</xsl:if>
					<xsl:if test="v1:FederalFacilityIndicator!= ''" >
					<FederalFacilityIndicator>
						<xsl:value-of select="v1:FederalFacilityIndicator" />
					</FederalFacilityIndicator>
					</xsl:if>
					<xsl:if test="v1:FederalFacilityIndicatorComment!= ''" >
					<FederalFacilityIndicatorComment>
						<xsl:value-of select="v1:FederalFacilityIndicatorComment" />
					</FederalFacilityIndicatorComment>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField1!= ''" >
					<InspectionUserDefinedField1>
						<xsl:value-of select="v1:InspectionUserDefinedField1" />
					</InspectionUserDefinedField1>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField2!= ''" >
					<InspectionUserDefinedField2>
						<xsl:value-of select="v1:InspectionUserDefinedField2" />
					</InspectionUserDefinedField2>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField3!= ''" >
					<InspectionUserDefinedField3>
						<xsl:value-of select="v1:InspectionUserDefinedField3" />
					</InspectionUserDefinedField3>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField4!= ''" >
					<InspectionUserDefinedField4>
						<xsl:value-of select="v1:InspectionUserDefinedField4" />
					</InspectionUserDefinedField4>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField5!= ''" >
					<InspectionUserDefinedField5>
						<xsl:value-of select="v1:InspectionUserDefinedField5" />
					</InspectionUserDefinedField5>
					</xsl:if>
					<xsl:if test="v1:InspectionUserDefinedField6!= ''" >
					<InspectionUserDefinedField6>
						<xsl:value-of select="v1:InspectionUserDefinedField6" />
					</InspectionUserDefinedField6>
					</xsl:if>
					<xsl:if test="v1:FirstName!= ''" >
					<InspectionContact>
						<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:ContactId=following-sibling::v1:record/v1:ContactId)]">
						<xsl:variable name="ContactId" select="ContactId"/>
						<Contact>
							<xsl:if test="v1:AffiliationTypeText!= ''" >
							<AffiliationTypeText>
								<xsl:value-of select="v1:AffiliationTypeText" />
							</AffiliationTypeText>
							</xsl:if>
							<FirstName>
								<xsl:value-of select="v1:FirstName" />
							</FirstName>
							<xsl:if test="v1:MiddleName!= ''" >
							<MiddleName>
								<xsl:value-of select="v1:MiddleName" />
							</MiddleName>
							</xsl:if>
							<xsl:if test="v1:LastName!= ''" >
							<LastName>
								<xsl:value-of select="v1:LastName" />
							</LastName>
							</xsl:if>
							<xsl:if test="v1:IndividualTitleText!= ''" >
							<IndividualTitleText>
								<xsl:value-of select="v1:IndividualTitleText" />
							</IndividualTitleText>
							</xsl:if>
							<xsl:if test="v1:OrganizationFormalName!= ''" >
							<OrganizationFormalName>
								<xsl:value-of select="v1:OrganizationFormalName" />
							</OrganizationFormalName>
							</xsl:if>
							<xsl:if test="v1:StateCode!= ''" >
							<StateCode>
								<xsl:value-of select="v1:StateCode" />
							</StateCode>
							</xsl:if>
							<xsl:if test="v1:RegionCode!= ''" >
							<RegionCode>
								<xsl:value-of select="v1:RegionCode" />
							</RegionCode>
							</xsl:if>
							<xsl:if test="v1:TelephoneNumber!= ''" >
							<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:ContactId=$ContactId][v1:TelephoneNumber!=''][not(self::v1:record/v1:TelephoneNumber=following-sibling::v1:record/v1:TelephoneNumber)]">
							<Telephone>
								<xsl:if test="v1:TelephoneNumberTypeCode!= ''" >
								<TelephoneNumberTypeCode>
									<xsl:value-of select="v1:TelephoneNumberTypeCode" />
								</TelephoneNumberTypeCode>
								</xsl:if>
								<TelephoneNumber>
									<xsl:value-of select="v1:TelephoneNumber" />
								</TelephoneNumber>
								<xsl:if test="v1:TelephoneExtensionNumber!= ''" >
								<TelephoneExtensionNumber>
									<xsl:value-of select="v1:TelephoneExtensionNumber" />
								</TelephoneExtensionNumber>
								</xsl:if>
							</Telephone>
							</xsl:for-each>
							</xsl:if>
							<xsl:if test="v1:ElectronicAddressText!= ''" >
							<ElectronicAddressText>
								<xsl:value-of select="v1:ElectronicAddressText" />
							</ElectronicAddressText>
							</xsl:if>
							<xsl:if test="v1:StartDateOfContactAssociation!= ''" >
							<StartDateOfContactAssociation>
								<xsl:value-of select="v1:StartDateOfContactAssociation" />
							</StartDateOfContactAssociation>
							</xsl:if>
							<xsl:if test="v1:EndDateOfContactAssociation!= ''" >
							<EndDateOfContactAssociation>
								<xsl:value-of select="v1:EndDateOfContactAssociation" />
							</EndDateOfContactAssociation>
							</xsl:if>
						</Contact>
						</xsl:for-each>
					</InspectionContact>
					</xsl:if>
					<xsl:if test="v1:GElectronicAddressText!= ''" >
					<InspectionGovernmentContact>
							<xsl:if test="v1:AffiliationTypeText!= ''" >
							<AffiliationTypeText>
								<xsl:value-of select="v1:GAffiliationTypeText" />
							</AffiliationTypeText>
							</xsl:if>
							<ElectronicAddressText>
								<xsl:value-of select="v1:GElectronicAddressText" />
							</ElectronicAddressText>
					</InspectionGovernmentContact>
					</xsl:if>
					<xsl:if test="v1:ComplianceMonitoringPlannedStartDate!= ''" >
					<ComplianceMonitoringPlannedStartDate>
						<xsl:value-of select="v1:PlannedStartDate" />
					</ComplianceMonitoringPlannedStartDate>
					</xsl:if>
					<xsl:if test="v1:ComplianceMonitoringPlannedEndDate!= ''" >
					<ComplianceMonitoringPlannedEndDate>
						<xsl:value-of select="v1:PlannedEndDate" />
					</ComplianceMonitoringPlannedEndDate>
					</xsl:if>
					<xsl:if test="v1:EPARegion!= ''" >
					<EPARegion>
						<xsl:value-of select="v1:EPARegion" />
					</EPARegion>
					</xsl:if>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='LawSectionCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<LawSectionCode>
						<xsl:value-of select="v1:CodeValue" />
					</LawSectionCode>
					</xsl:for-each >
					<xsl:if test="v1:MediaTypeCode!= ''" >
					<ComplianceMonitoringMediaTypeCode>
						<xsl:value-of select="v1:MediaTypeCode" />
					</ComplianceMonitoringMediaTypeCode>
					</xsl:if>
					<xsl:for-each select="//v1:record[v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CodeName='RegionalPriorityCode'][not(self::v1:record/v1:ComplianceMonitoringCodeId=following-sibling::v1:record/v1:ComplianceMonitoringCodeId)]">
					<RegionalPriorityCode>
						<xsl:value-of select="v1:CodeValue" />
					</RegionalPriorityCode>
					</xsl:for-each >
					<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:SICCode=following-sibling::v1:record/v1:SICCode)]">
					<xsl:if test="v1:SICCode!= ''" >
					<SICCode>
						<xsl:value-of select="v1:SICCode" />
					</SICCode>
					</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:NAICSCode=following-sibling::v1:record/v1:NAICSCode)]">
					<xsl:if test="v1:NAICSCode!= ''" >
					<NAICSCode>
						<xsl:value-of select="v1:NAICSCode" />
					</NAICSCode>
					</xsl:if>
					</xsl:for-each>
					<xsl:if test="v1:OtherProgramDescriptionText!= ''" >
					<OtherProgramDescriptionText>
						<xsl:value-of select="v1:OtherProgramDescriptionText" />
					</OtherProgramDescriptionText>
					</xsl:if>
					<xsl:if test="v1:LeadAgencyCode!= ''" >
					<LeadAgencyCode>
						<xsl:value-of select="v1:LeadAgencyCode" />
					</LeadAgencyCode>
					</xsl:if>
					<xsl:for-each select="//v1:record[v1:InspectionConclusionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:InspectionConclusionId!=''][not(self::v1:record/v1:InspectionConclusionId=following-sibling::v1:record/v1:InspectionConclusionId)]">
					<xsl:variable name="InspectionConclusionId" select="v1:InspectionConclusionId"/>
					<InspectionConclusionDataSheet>
						<DeficienciesObservedIndicator>
							<xsl:value-of select="v1:DeficienciesObservedInd" />
						</DeficienciesObservedIndicator>
						<xsl:for-each select="//v1:record[v1:CodeName='DeficiencyObservedCode'][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:InspectionConclusionId=$InspectionConclusionId][not(self::v1:record/v1:InspectionConclusionCodeId=following-sibling::v1:record/v1:InspectionConclusionCodeId)]">
						<DeficiencyObservedCode>
							<xsl:value-of select="v1:CodeValue" />
						</DeficiencyObservedCode>
						</xsl:for-each>
						<DeficiencyCommunicatedFacilityIndicator>
							<xsl:value-of select="v1:DeficiencyCommunicatedFacilityInd" />
						</DeficiencyCommunicatedFacilityIndicator>
						<FacilityActionObservedIndicator>
							<xsl:value-of select="v1:FacilityActionObservedInd" />
						</FacilityActionObservedIndicator>
						<xsl:for-each select="//v1:record[v1:CodeName='CorrectiveActionCode'][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:InspectionConclusionId=$InspectionConclusionId][not(self::v1:record/v1:CodeName=following-sibling::v1:record/v1:CodeName)]">
						<CorrectiveActionCode>
							<xsl:value-of select="v1:CodeValue" />
						</CorrectiveActionCode>
						</xsl:for-each>
						<xsl:for-each select="//v1:record[v1:CodeName='AirPollutantCode'][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:InspectionConclusionId=$InspectionConclusionId][not(self::v1:record/v1:CodeName=following-sibling::v1:record/v1:CodeName)]">
						<AirPollutantCode>
							<xsl:value-of select="v1:CodeValue" />
						</AirPollutantCode>
						</xsl:for-each>
						<xsl:for-each select="//v1:record[v1:CodeName='WaterPollutantCode'][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:InspectionConclusionId=$InspectionConclusionId][not(self::v1:record/v1:CodeName=following-sibling::v1:record/v1:CodeName)]">
						<WaterPollutantCode>
							<xsl:value-of select="v1:CodeValue" />
						</WaterPollutantCode>
						</xsl:for-each>
						<NationalPolicyGeneralAssistanceIndicator>
							<xsl:value-of select="v1:NationalPolicyGeneralAssistanceInd" />
						</NationalPolicyGeneralAssistanceIndicator>
						<NationalPolicySiteSpecificAssistanceIndicator>
							<xsl:value-of select="v1:NationalPolicySiteSpecificAssistanceInd" />
						</NationalPolicySiteSpecificAssistanceIndicator>
					</InspectionConclusionDataSheet>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:SubactivityId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:SubactivityId!=''][not(self::v1:record/v1:SubactivityId=following-sibling::v1:record/v1:SubactivityId)]">
					<Subactivity>
						<SubactivityTypeCode>
							<xsl:value-of select="v1:SubactivityTypeCode" />
						</SubactivityTypeCode>
						<SubactivityPlannedDate>
							<xsl:value-of select="v1:SubactivityPlannedDate" />
						</SubactivityPlannedDate>
						<SubactivityDate>
							<xsl:value-of select="v1:SubactivityDate" />
						</SubactivityDate>
					</Subactivity>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:CitationId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:CitationId=following-sibling::v1:record/v1:CitationId)]">
					<Citation>
						<CitationTitle>
							<xsl:value-of select="v1:CitationTitle" />
						</CitationTitle>
						<CitationPart>
							<xsl:value-of select="v1:CitationPart" />
						</CitationPart>
						<CitationSection>
							<xsl:value-of select="v1:CitationSection" />
						</CitationSection>
					</Citation>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:CAFOInspectionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CAFOInspectionId!=''][not(self::v1:record/v1:CAFOInspectionId=following-sibling::v1:record/v1:CAFOInspectionId)]">
					<CAFOInspection>
						<CAFOClassificationCode>
							<xsl:value-of select="v1:CAFOClassificationCode" />
						</CAFOClassificationCode>
						<IsAnimalFacilityTypeCAFOIndicator>
							<xsl:value-of select="v1:IsAnimalFacilityTypeCAFOInd" />
						</IsAnimalFacilityTypeCAFOIndicator>
						<CAFODesignationDate>
							<xsl:value-of select="v1:CAFODesignationDate" />
						</CAFODesignationDate>
						<CAFODesignationReasonText>
							<xsl:value-of select="v1:CAFODesignationReasonText" />
						</CAFODesignationReasonText>
					</CAFOInspection>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:CSOInspectionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:CSOInspectionId!=''][not(self::v1:record/v1:CSOInspectionId=following-sibling::v1:record/v1:CSOInspectionId)]">
					<CSOInspection>
						<DryOrWetWeatherIndicator>
							<xsl:value-of select="v1:DryOrWetWeatherInd" />
						</DryOrWetWeatherIndicator>
						<PermittedFeatureIdentifier>
							<xsl:value-of select="v1:PermittedFeatureId" />
						</PermittedFeatureIdentifier>
						<LatitudeLongitudeCoordinates>
							<LatitudeMeasure>
								<xsl:value-of select="v1:CSO_Lati" />
							</LatitudeMeasure>
							<LongitudeMeasure>
								<xsl:value-of select="v1:CSO_Longi" />
							</LongitudeMeasure>
						</LatitudeLongitudeCoordinates>
						<CSOOverflowLocationStreet>
							<xsl:value-of select="v1:CSOOverflowLocationStreet" />
						</CSOOverflowLocationStreet>
						<DurationCSOOverflowEvent>
							<xsl:value-of select="v1:DurationCSOOverflowEvent" />
						</DurationCSOOverflowEvent>
						<DischargeVolumeTreated>
							<xsl:value-of select="v1:DischargeVolumeTreated" />
						</DischargeVolumeTreated>
						<DischargeVolumeUntreated>
							<xsl:value-of select="v1:DischargeVolumeUntreated" />
						</DischargeVolumeUntreated>
						<CorrectiveActionTakenDescriptionText>
							<xsl:value-of select="v1:CorrectiveActionTakenDescriptionText" />
						</CorrectiveActionTakenDescriptionText>
						<InchesPrecipitation>
							<xsl:value-of select="v1:InchesPrecipitation" />
						</InchesPrecipitation>
					</CSOInspection>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:PretreatmentId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:PretreatmentId!=''][not(self::v1:record/v1:PretreatmentId=following-sibling::v1:record/v1:PretreatmentId)]">
					<PretreatmentInspection>
						<SUOReference>
							<xsl:value-of select="v1:SUOReference" />
						</SUOReference>
						<SUODate>
							<xsl:value-of select="v1:SUODate" />
						</SUODate>
						<AcceptanceHazardousWaste>
							<xsl:value-of select="v1:AcceptanceHazardousWaste" />
						</AcceptanceHazardousWaste>
						<AcceptanceNonHazardousIndustrialWaste>
							<xsl:value-of select="v1:AcceptanceNonHazardousIndustrialWaste" />
						</AcceptanceNonHazardousIndustrialWaste>
						<AcceptanceHauledDomesticWastes>
							<xsl:value-of select="v1:AcceptanceHauledDomesticWastes" />
						</AcceptanceHauledDomesticWastes>
						<AnnualPretreatmentBudget>
							<xsl:value-of select="v1:AnnualPretreatmentBudget" />
						</AnnualPretreatmentBudget>
						<InadequacySamplingInspectionIndicator>
							<xsl:value-of select="v1:InadequacySamplingInspectionInd" />
						</InadequacySamplingInspectionIndicator>
						<AdequacyPretreatmentResources>
							<xsl:value-of select="v1:AdequacyPretreatmentResources" />
						</AdequacyPretreatmentResources>
						<DeficienciesIdentifiedDuringIUFileReview>
							<xsl:value-of select="v1:DeficienciesIdentifiedDuringIUFileReview" />
						</DeficienciesIdentifiedDuringIUFileReview>
						<ControlMechanismDeficiencies>
							<xsl:value-of select="v1:ControlMechanismDeficiencies" />
						</ControlMechanismDeficiencies>
						<LegalAuthorityDeficiencies>
							<xsl:value-of select="v1:LegalAuthorityDeficiencies" />
						</LegalAuthorityDeficiencies>
						<DeficienciesInterpretationApplicationPretreatmentStandards>
							<xsl:value-of select="v1:DeficienciesInterpretationApplicationPretreatmentStandards" />
						</DeficienciesInterpretationApplicationPretreatmentStandards>
						<DeficienciesDataManagementPublicParticipation>
							<xsl:value-of select="v1:DeficienciesDataManagementPublicParticipation" />
						</DeficienciesDataManagementPublicParticipation>
						<ViolationIUScheduleRemedialMeasures>
							<xsl:value-of select="v1:ViolationIUScheduleRemedialMeasures" />
						</ViolationIUScheduleRemedialMeasures>
						<FormalResponseViolationIUScheduleRemedialMeasures>
							<xsl:value-of select="v1:FormalResponseViolationIUScheduleRemedialMeasures" />
						</FormalResponseViolationIUScheduleRemedialMeasures>
						<AnnualFrequencyInfluentToxicantSampling>
							<xsl:value-of select="v1:AnnualFrequencyInfluentToxicantSampling" />
						</AnnualFrequencyInfluentToxicantSampling>
						<AnnualFrequencyEffluentToxicantSampling>
							<xsl:value-of select="v1:AnnualFrequencyEffluentToxicantSampling" />
						</AnnualFrequencyEffluentToxicantSampling>
						<AnnualFrequencySludgeToxicantSampling>
							<xsl:value-of select="v1:AnnualFrequencySludgeToxicantSampling" />
						</AnnualFrequencySludgeToxicantSampling>
						<NumberSIUs>
							<xsl:value-of select="v1:NumberSIUs" />
						</NumberSIUs>
						<SIUsWithoutControlMechanism>
							<xsl:value-of select="v1:SIUsWithoutControlMechanism" />
						</SIUsWithoutControlMechanism>
						<SIUsNotInspected>
							<xsl:value-of select="v1:SIUsNotInspected" />
						</SIUsNotInspected>
						<SIUsNotSampled>
							<xsl:value-of select="v1:SIUsNotSampled" />
						</SIUsNotSampled>
						<SIUsOnSchedule>
							<xsl:value-of select="v1:SIUsOnSchedule" />
						</SIUsOnSchedule>
						<SIUsSNCWithPretreatmentStandards>
							<xsl:value-of select="v1:SIUsSNCWithPretreatmentStandards" />
						</SIUsSNCWithPretreatmentStandards>
						<SIUsSNCWithReportingRequirements>
							<xsl:value-of select="v1:SIUsSNCWithReportingRequirements" />
						</SIUsSNCWithReportingRequirements>
						<SIUsSNCWithPretreatmentSchedule>
							<xsl:value-of select="v1:SIUsSNCWithPretreatmentSchedule" />
						</SIUsSNCWithPretreatmentSchedule>
						<SIUsSNCPublishedNewspaper>
							<xsl:value-of select="v1:SIUsSNCPublishedNewspaper" />
						</SIUsSNCPublishedNewspaper>
						<ViolationNoticesIssuedSIUs>
							<xsl:value-of select="v1:ViolationNoticesIssuedSIUs" />
						</ViolationNoticesIssuedSIUs>
						<AdministrativeOrdersIssuedSIUs>
							<xsl:value-of select="v1:AdministrativeOrdersIssuedSIUs" />
						</AdministrativeOrdersIssuedSIUs>
						<CivilSuitsFiledAgainstSIUs>
							<xsl:value-of select="v1:CivilSuitsFiledAgainstSIUs" />
						</CivilSuitsFiledAgainstSIUs>
					</PretreatmentInspection>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:SSOInspectionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:SSOInspectionId!=''][not(self::v1:record/v1:SSOInspectionId=following-sibling::v1:record/v1:SSOInspectionId)]">
					<xsl:variable name="SSOInspectionId" select="v1:SSOInspectionId"/>
					<SSOInspection>
						<CauseSSOOverflowEvent>
							<xsl:value-of select="v1:CauseSSOOverflowEvent" />
						</CauseSSOOverflowEvent>
						<LatitudeLongitudeCoordinates>
							<LatitudeMeasure>
								<xsl:value-of select="v1:SSO_Lati" />
							</LatitudeMeasure>
							<LongitudeMeasure>
								<xsl:value-of select="v1:SSO_Longi" />
							</LongitudeMeasure>
						</LatitudeLongitudeCoordinates>
						<SSOOverflowLocationStreet>
							<xsl:value-of select="v1:SSOOverflowLocationStreet" />
						</SSOOverflowLocationStreet>
						<DurationSSOOverflowEvent>
							<xsl:value-of select="v1:DurationSSOOverflowEvent" />
						</DurationSSOOverflowEvent>
						<SSOVolume>
							<xsl:value-of select="v1:SSOVolume" />
						</SSOVolume>
						<NameReceivingWater>
							<xsl:value-of select="v1:NameReceivingWater" />
						</NameReceivingWater>
						<ImpactSSOEvent>
							<xsl:value-of select="v1:ImpactSSOEvent" />
						</ImpactSSOEvent>
						<xsl:for-each select="//v1:record[v1:SSOSystemComponentId!=''][v1:SSOInspectionId=$SSOInspectionId][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:SSOSystemComponentId=following-sibling::v1:record/v1:SSOSystemComponentId)]">
						<SSOSystemComponent>
							<SystemComponent>
								<xsl:value-of select="v1:SystemComponent" />
							</SystemComponent>
							<OtherSystemComponent>
								<xsl:value-of select="v1:OtherSystemComponent" />
							</OtherSystemComponent>
						</SSOSystemComponent>
						</xsl:for-each>
						<xsl:for-each select="//v1:record[v1:SSOStepId!=''][v1:SSOInspectionId=$SSOInspectionId][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][not(self::v1:record/v1:SSOStepId=following-sibling::v1:record/v1:SSOStepId)]">
						<SSOSteps>
							<StepsReducePreventMitigate>
								<xsl:value-of select="v1:StepsReducePreventMitigate" />
							</StepsReducePreventMitigate>
							<OtherStepsReducePreventMitigate>
								<xsl:value-of select="v1:OtherStepsReducePreventMitigate" />
							</OtherStepsReducePreventMitigate>
						</SSOSteps>
						</xsl:for-each>
						<DescriptionStepsTaken>
							<xsl:value-of select="v1:DescriptionStepsTaken" />
						</DescriptionStepsTaken>
					</SSOInspection>
					</xsl:for-each>
					<xsl:for-each select="//v1:record[v1:StormWaterConstructionInspectionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:StormWaterConstructionInspectionId!=''][not(self::v1:record/v1:StormWaterConstructionInspectionId=following-sibling::v1:record/v1:StormWaterConstructionInspectionId)]">
					<StormWaterConstructionNonConstructionInspections>
						<ProjectTypeCode>
							<xsl:value-of select="v1:ProjectTypeCode" />
						</ProjectTypeCode>
						<ProjectTypeCodeOtherDescription>
							<xsl:value-of select="v1:ProjectTypeCodeOtherDescription" />
						</ProjectTypeCodeOtherDescription>
						<EstimatedStartDate>
							<xsl:value-of select="v1:EstimatedStartDate" />
						</EstimatedStartDate>
						<EstimatedCompleteDate>
							<xsl:value-of select="v1:EstimatedCompleteDate" />
						</EstimatedCompleteDate>
						<EstimatedAreaDisturbedAcresNumber>
							<xsl:value-of select="v1:EstimatedAreaDisturbedAcresNumber" />
						</EstimatedAreaDisturbedAcresNumber>
						<ProjectPlanSizeCode>
							<xsl:value-of select="v1:ProjectPlanSizeCode" />
						</ProjectPlanSizeCode>
						<ProjectTypeCodeOtherDescription>
							<xsl:value-of select="v1:ProjectTypeCodeOtherDescription" />
						</ProjectTypeCodeOtherDescription>
					</StormWaterConstructionNonConstructionInspections>
					</xsl:for-each><xsl:for-each select="//v1:record[v1:StormWaterMS4InspectionId!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:StormWaterMS4InspectionId!=''][not(self::v1:record/v1:StormWaterMS4InspectionId=following-sibling::v1:record/v1:StormWaterMS4InspectionId)]">
					<StormWaterMS4Inspection>
						<LegalEntityTypeCode>
							<xsl:value-of select="v1:LegalEntityTypeCode" />
						</LegalEntityTypeCode>
						<MS4PermitClassCode>
							<xsl:value-of select="v1:MS4PermitClassCode" />
						</MS4PermitClassCode>
						<MS4TypeCode>
							<xsl:value-of select="v1:MS4TypeCode" />
						</MS4TypeCode>
						<MS4AcreageCoveredNumber>
							<xsl:value-of select="v1:MS4AcreageCoveredNumber" />
						</MS4AcreageCoveredNumber>
						<MS4PopulationServedNumber>
							<xsl:value-of select="v1:MS4PopulationServedNumber" />
						</MS4PopulationServedNumber>
						<UrbanizedAreaIncorporatedPlaceName>
							<xsl:value-of select="v1:UrbanizedAreaIncorporatedPlaceName" />
						</UrbanizedAreaIncorporatedPlaceName>
					</StormWaterMS4Inspection>
					</xsl:for-each>
					<xsl:if test="v1:StackTestStatusCode!= ''" >
					<FederalAirStackTestData>
						<StackTestStatusCode><xsl:value-of select="v1:StackTestStatusCode" /></StackTestStatusCode>
						<xsl:if test="v1:ConductorTypeCode!= ''" >
						<StackTestConductorTypeCode>
						<xsl:value-of select="v1:ConductorTypeCode" />
						</StackTestConductorTypeCode>
						</xsl:if>
						<xsl:if test="v1:StackIdentifier!= ''" >
						<StackIdentifier>
						<xsl:value-of select="v1:StackIdentifier" />
						</StackIdentifier>
						</xsl:if>
						<xsl:if test="v1:OtherStackTestPurposeName!= ''" >
						<OtherStackTestPurposeName>
						<xsl:value-of select="v1:OtherStackTestPurposeName" />
						</OtherStackTestPurposeName>
						</xsl:if>
						<xsl:if test="v1:StackTestReportReceivedDate!= ''" >
						<StackTestReportReceivedDate>
						<xsl:value-of select="v1:StackTestReportReceivedDate" />
						</StackTestReportReceivedDate>
						</xsl:if>
						<xsl:if test="v1:TestResultsReviewedDate!= ''" >
						<TestResultsReviewedDate>
						<xsl:value-of select="v1:TestResultsReviewedDate" />
						</TestResultsReviewedDate>
						</xsl:if>
						<xsl:if test="v1:AirTestedPollutantCode!= ''" >
						<xsl:for-each select="//v1:record[v1:ProgramSystemAcronym!=''][v1:TransactionID=$TransactionID][v1:ComplianceMonitoringId=$ComplianceMonitoringId][v1:TestResultsDataId!=''][not(self::v1:record/v1:TestResultsDataId=following-sibling::v1:record/v1:TestResultsDataId)]">
						<TestResultsData>
							<AirTestedPollutantCode><xsl:value-of select="v1:AirTestedPollutantCode" /></AirTestedPollutantCode> 
							<xsl:if test="v1:TestResultCode!= ''" >
							<TestResultCode>
							<xsl:value-of select="v1:TestResultCode" />
							</TestResultCode>
							</xsl:if>
							<xsl:if test="v1:MethodCode!= ''" >
							<MethodCode>
							<xsl:value-of select="v1:MethodCode" />
							</MethodCode>
							</xsl:if>
							<xsl:if test="v1:AllowableValue!= ''" >
							<AllowableValue>
							<xsl:value-of select="v1:AllowableValue" />
							</AllowableValue>
							</xsl:if>
							<xsl:if test="v1:AllowableUnitCode!= ''" >
							<AllowableUnitCode>
							<xsl:value-of select="v1:AllowableUnitCode" />
							</AllowableUnitCode>
							</xsl:if>
							<xsl:if test="v1:ActualResult!= ''" >
							<ActualResult>
							<xsl:value-of select="v1:ActualResult" />
							</ActualResult>
							</xsl:if>
							<xsl:if test="v1:FailureReasonCode!= ''" >
							<FailureReasonCode>
							<xsl:value-of select="v1:FailureReasonCode" />
							</FailureReasonCode>
							</xsl:if>
							<xsl:if test="v1:OtherFailureReasonText!= ''" >
							<OtherFailureReasonText>
							<xsl:value-of select="v1:OtherFailureReasonText" />
							</OtherFailureReasonText>
							</xsl:if>
						</TestResultsData>
						</xsl:for-each>
						</xsl:if>
					</FederalAirStackTestData>
					</xsl:if>
            </FederalComplianceMonitoring>
				</xsl:for-each>
        </FederalComplianceMonitoringData>
		</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

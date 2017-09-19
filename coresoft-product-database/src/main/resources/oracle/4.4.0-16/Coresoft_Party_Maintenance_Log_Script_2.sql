CREATE
	OR
REPLACE
	VIEW party_MAINT_LOG_report_VW AS 
SELECT
	pml.CHANGE_LOG_ENTRY_ID,
	pml.UNIQUE_ASSOCIATION_ID,
	decode(TYPE ,'com.vsoftcorp.coresoft.model.party.PartyAddress','com.vsoftcorp.coresoft.party.PartyAddress', 
	'com.vsoftcorp.coresoft.model.party.RegistrationIdentity','com.vsoftcorp.coresoft.party.RegistrationIdentity', 
	'com.vsoftcorp.time.Date','com.vsoftcorp.time.Date',
    'java.sql.Date','com.vsoftcorp.time.Date',
    'java.lang.String','java.lang.String') class_type_update,
	pml.BRANCH_ID,
	pml.USER_ID ,
	pml.ENTRY_DATE,
	pml.EFFECTIVE_DATE_FROM,
	pml.EFFECTIVE_DATE_TO,
	pml.FIELD_NAME,
	pml.OLD_VALUE,
	pml.NEW_VALUE,
    i.INSTITUTION_ID
     FROM
	PARTY_ASSOC_MAINT_LOG pml,
	PARTY_INSTITUTION_ASSOCIATION pia,
	INSTITUTION i 
WHERE
    pml.UNIQUE_ASSOCIATION_ID=pia.UNIQUE_ASSOCIATION_ID AND
	pia.INSTITUTION_ID=i. INSTITUTION_UNIQUE_ID;
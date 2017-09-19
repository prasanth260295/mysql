--Alter table MAINTENANCE_LOG DROP COLUMN CLAS_TYPE_UPDATE;

CREATE OR REPLACE VIEW MAINTENANCE_LOG_VW
AS
SELECT
    m.ENTRY_ID,
    am.account_id,
    a.INSTITUTION_ID,
    m.CLASS_TYPE,
    decode(CLASS_TYPE ,'java.lang.String','java.lang.String',
    'com.vsoftcorp.coresoft.model.ProductType','com.vsoftcorp.coresoft.product.SimpleProductType',
    'java.lang.Integer','java.lang.Integer',
    'com.vsoftcorp.coresoft.model.Branch','com.vsoftcorp.coresoft.institution.Branch',
    'com.vsoftcorp.coresoft.model.InstitutionProductCategoryClassCode','com.vsoftcorp.coresoft.product.SimpleProductType',
    'com.vsoftcorp.coresoft.model.SavingsPlanDistributionProceedsCodeType','java.lang.String',
    'com.vsoftcorp.coresoft.model.AccountStatus','java.lang.String',
    'com.vsoftcorp.coresoft.model.Negotiable','java.lang.String',
    'com.vsoftcorp.coresoft.model.SimpleInstitutionProductCategoryClassCode','com.vsoftcorp.coresoft.product.SimpleProductType',
    'java.lang.Double','java.lang.Double',
    'com.vsoftcorp.coresoft.model.typesafety.InterestCalculation','com.vsoftcorp.coresoft.parameters.InterestCalculationMethod',
    'com.vsoftcorp.utils.time.Instant','com.vsoftcorp.time.Date',
    'com.vsoftcorp.coresoft.model.EqualInterestPaymentInd','java.lang.String',
    'com.vsoftcorp.coresoft.parameters.InterestCode','com.vsoftcorp.coresoft.parameters.InterestCode',
    'java.math.BigDecimal','java.lang.Double',
    'com.vsoftcorp.coresoft.model.SavingsPlanStatus','java.lang.String',
    'com.vsoftcorp.coresoft.model.DaysPerYearCode','com.vsoftcorp.coresoft.parameters.DaysPerYearCode',
    'com.vsoftcorp.coresoft.model.DaysPerYearCode$4','java.lang.String',
    'com.vsoftcorp.coresoft.model.typesafety.OwnershipDesignation','java.lang.String',
    'java.lang.Boolean','java.lang.Boolean',
    'com.vsoftcorp.utils.time.TimeFrequencySchedule','java.lang.String',
    'com.vsoftcorp.utils.time.InstantSchedule','java.lang.String',
    'com.vsoftcorp.utils.time.RecurrencePatternSchedule','java.lang.String',
    'com.vsoftcorp.coresoft.model.ProductType','com.vsoftcorp.coresoft.product.SimpleProductType',
    'com.vsoftcorp.utils.time.Duration','com.vsoftcorp.time.IDuration',
    'com.vsoftcorp.coresoft.model.ProceedsCode','com.vsoftcorp.coresoft.parameters.ProceedsCode',
    'com.vsoftcorp.datatype.Percentage','java.lang.String',
    'com.vsoftcorp.coresoft.parameters.InterestCode$$EnhancerByCGLIB$$5ad29ff7','java.lang.String',
    'com.vsoftcorp.coresoft.model.ModeOfOperation','java.lang.String',
    'com.vsoftcorp.coresoft.model.RegisteredIdType','com.vsoftcorp.coresoft.party.RegistrationIdentity',
    'com.vsoftcorp.coresoft.model.DaysPerYearCode$2','java.lang.String',
    'com.vsoftcorp.finance.Money','com.vsoftcorp.finance.Money',
    'com.vsoftcorp.coresoft.parameters.ServiceCharge','java.lang.String',
    'com.vsoftcorp.coresoft.model.Branch$$EnhancerByCGLIB$$1c568aeb','java.lang.String',
    'com.vsoftcorp.coresoft.model.DaysPerYearCode$1','java.lang.String',
    'com.vsoftcorp.coresoft.model.SimpleProductType','com.vsoftcorp.coresoft.product.SimpleProductType',
    'com.vsoftcorp.coresoft.model.Oneup','java.lang.String',
    'com.vsoftcorp.coresoft.model.DaysPerYearCode$3','java.lang.String',
    null,'',
    'java.lang.String' ) class_type_update,
	M.branch_name,
	M.user_name ,
	M.entry_date,
        m.EFFECTIVE_DATE_FROM,
	M.EFFECTIVE_DATE_TO,
	M.field_changed,
	M.CHANGE_FROM,
	M.CHANGE_TO 
   
FROM
	MAINTENANCE_LOG M,
	ACCOUNT_MAINTENANCE_LOG am,
	account a
	WHERE
	M.ENTRY_ID = am.ENTRY_ID AND
	am.account_id = a.ACCOUNT_ID ;
	
alter table PARTY_ASSOC_MAINT_LOG DROP COLUMN CLAS_TYPE_UPDATE;

ALTER TABLE FRABA ADD (CHECK_DIGIT NUMBER(1));

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
	pia.INSTITUTION_ID=i. INSTITUTION_ID;

alter table ACCOUNT_MAINTENANCE_LOG add ( EVENT_GENERATED NUMBER(1) NULL );

alter table ACCOUNT_MAINTENANCE_LOG modify ( EVENT_GENERATED NUMBER(1) NOT NULL );

alter table PARTY_ASSOC_MAINT_LOG add (	EVENT_GENERATED NUMBER(1) NULL);

alter table PARTY_ASSOC_MAINT_LOG modify (EVENT_GENERATED NUMBER(1) NOT NULL);

alter table transaction_posttoday add stop_payment_inst_id varchar2(15);

alter table PARTY_ASSOC_MAINT_LOG modify ( EVENT_GENERATED NUMBER(1) NULL);

alter table ACCOUNT_MAINTENANCE_LOG modify (EVENT_GENERATED NUMBER(1) NULL);

alter table INSTITUTION add NEXT_BUSINESS_DATE date;

alter table INSTITUTION add LAST_BUSINESS_DATE date;

alter table TRANSACTION_POSTTODAY add OPERATOR_ID varchar2(30);

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION 	ADD ( IS_ACTIVE NUMBER(3,0) DEFAULT 0 ) ;

UPDATE	AUTOMATIC_TRANSFER_INSTRUCTION SET
	IS_ACTIVE=1 WHERE	SOURCE_ACCOUNT IN (SELECT ACCOUNT_ID FROM DEPOSIT_ACCOUNT)	AND
	TARGET_ACCOUNT IN (	SELECT ACCOUNT_ID FROM DEPOSIT_ACCOUNT);

CREATE	OR REPLACE	VIEW "AUTOMATIC_TRANSFER_VW" AS 
SELECT
	AUTO_TRANS_UNIQUE_ID,
	SOURCE_ACCOUNT,
	SOURCE.ACCOUNT_NO SOURCE_ACC_NO,
	SOURCE.INSTITUTION_ID SOURCE_INST_NO,
	SOURCE.ACCOUNT_TYPE_ID SOURCE_ACC_TYPE_ID,
	TARGET_ACCOUNT,
	TARGET.ACCOUNT_NO TARGET_ACC_NO,
	TARGET.INSTITUTION_ID TARGET_INST_NO,
	TARGET.ACCOUNT_TYPE_ID TARGET_ACC_TYPE_ID,
	TRANSFER_MONEY,
	case when instr(TRANSFER_FREQUENCY,'#')=0 then TRANSFER_FREQUENCY 
	else  substr(TRANSFER_FREQUENCY,0,instr(TRANSFER_FREQUENCY,'#')-1) end TRANSFER_FREQUENCY,
	NUMBER_OF_TRANSFERS,
	START_DATE,
	END_DATE,
	AUTOMATIC_TRANSFER,
	IS_VARIABLE_AMOUNT,
        IS_ACTIVE  
FROM
	AUTOMATIC_TRANSFER_INSTRUCTION AT,
	ACCOUNT SOURCE,
	ACCOUNT TARGET 
WHERE
	AT.SOURCE_ACCOUNT=SOURCE.ACCOUNT_ID AND
	AT.TARGET_ACCOUNT=TARGET.ACCOUNT_ID;

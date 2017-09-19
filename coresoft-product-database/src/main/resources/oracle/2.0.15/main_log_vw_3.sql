

CREATE OR REPLACE VIEW MAINTENANCE_LOG_VW ( ENTRY_ID, ACCOUNT_ID, INSTITUTION_ID, CLASS_TYPE, CLASS_TYPE_UPDATE, BRANCH_NAME, USER_NAME, ENTRY_DATE, EFFECTIVE_DATE_FROM, EFFECTIVE_DATE_TO, FIELD_CHANGED, CHANGE_FROM, CHANGE_TO )
AS
SELECT
    m.ENTRY_ID,
    am.account_id,
    a.INSTITUTION_ID,
    m.CLASS_TYPE,
    decode(CLASS_TYPE ,'java.lang.String','java.lang.String',
    'com.vsoftcorp.coresoft.model.ProductType','java.lang.String',
    'java.lang.Integer','java.lang.Integer',
    'com.vsoftcorp.coresoft.model.Branch','java.lang.String',
    'com.vsoftcorp.coresoft.model.InstitutionProductCategoryClassCode','java.lang.String',
    'com.vsoftcorp.coresoft.model.SavingsPlanDistributionProceedsCodeType','java.lang.String',
    'com.vsoftcorp.coresoft.model.AccountStatus','java.lang.String',
    'com.vsoftcorp.coresoft.model.Negotiable','java.lang.String',
    'com.vsoftcorp.coresoft.model.SimpleInstitutionProductCategoryClassCode','java.lang.String',
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
    'com.vsoftcorp.coresoft.model.ProductType','java.lang.String',
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
    'com.vsoftcorp.coresoft.model.SimpleProductType','java.lang.String',
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
	am.account_id = a.ACCOUNT_ID;
 


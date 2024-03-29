CREATE
	OR
REPLACE
	VIEW HOLD_PAYMENT_MAINTENANCE_VW 
	(
		INSTRUCTION_ID,
		ACCOUNT_ID,
		ENTRY_DATE,
		BUSINESS_DATE,
		ACTION,
		OLD_DESCRIPTION,
		OLD_CREATED_DATE,
		OLD_EFFECTIVE_START_DATE,
		OLD_EFFECTIVE_EXPIRE_DATE,
		OLD_CREATED_BY,
		OLD_MODIFIED_BY,
		OLD_OTHER_INFO,
		OLD_HOLD_AMOUNT,
		OLD_HOLD_TYPE_ID,
		OLD_HOLD_STATUS,
		NEW_DESCRIPTION,
		NEW_CREATED_DATE,
		NEW_EFFECTIVE_START_DATE,
		NEW_EFFECTIVE_EXPIRE_DATE,
		NEW_CREATED_BY,
		NEW_MODIFIED_BY,
		NEW_OTHER_INFO,
		NEW_HOLD_AMOUNT,
		NEW_HOLD_TYPE_ID,
		NEW_HOLD_STATUS,
		INSTITUTION_ID,
		HOLD_PAYMENT_ID,
		ACCOUNT_NO,
		ACCOUNT_TYPE_ID 
	)
	AS 
SELECT
	hpm."INSTRUCTION_ID",
	hpm."ACCOUNT_ID",
	hpm."ENTRY_DATE",
	hpm."BUSINESS_DATE",
	hpm."ACTION",
	hpm."OLD_DESCRIPTION",
	hpm."OLD_CREATED_DATE",
	hpm."OLD_EFFECTIVE_START_DATE",
	hpm."OLD_EFFECTIVE_EXPIRE_DATE",
	hpm."OLD_CREATED_BY",
	hpm."OLD_MODIFIED_BY",
	hpm."OLD_OTHER_INFO",
	hpm."OLD_HOLD_AMOUNT",
	hpm."OLD_HOLD_TYPE_ID",
	hpm."OLD_HOLD_STATUS",
	hpm."NEW_DESCRIPTION",
	hpm."NEW_CREATED_DATE",
	hpm."NEW_EFFECTIVE_START_DATE",
	hpm."NEW_EFFECTIVE_EXPIRE_DATE",
	hpm."NEW_CREATED_BY",
	hpm."NEW_MODIFIED_BY",
	hpm."NEW_OTHER_INFO",
	hpm."NEW_HOLD_AMOUNT",
	hpm."NEW_HOLD_TYPE_ID",
	hpm."NEW_HOLD_STATUS",
	hpm."INSTITUTION_ID",
	hpm."HOLD_PAYMENT_ID",
	a.account_no ,
	a.account_type_id 
FROM
	HOLD_PAYMENT_MAINTENANCE hpm,
	DEPOSIT_ACCOUNT_VW A 
WHERE
	hpm.account_id = a.account_id;


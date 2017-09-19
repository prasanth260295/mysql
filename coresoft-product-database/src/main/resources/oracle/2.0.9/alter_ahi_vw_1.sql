CREATE
	OR
REPLACE
	VIEW ACCOUNT_HISTORY_ITEM_VW 
	(
		ACCOUNT_NO,
		INSTITUTION_ID,
		ACCOUNT_ID,
		TRANS_CODE,
		AMOUNT,
		CHEQUE,
		TRACE,
		POST_DATE,
		EFFECTIVE_DATE,
		BALANCE,
		POST_STATUS,
		SOURCE_NAME,
		IRA_DIST,
		DESCRIPTION,
		STATEMENT_DATE,
		COMPANY_NAME,
		ENTRY_DATE,
		CUSTOMER_NO,
		TRANSACTION_ID,
		CURRENCY,
		PAYMENT_ID,
		POSTED_TO,
		EVENT_ID,
		SOURCE_TRANS_CODE,
		ORG_TRANS_CODE,
		TRANSACTION_DETAILS,
		COMPANY_DESCRIPTION,
		ENTRY_TYPE_ID,
		CIF_TRANS_CODE,
		TRANS_ACCOUNT_NO,
		ACCOUNT_TYPE_ID,
		POSTING_SEQUENCE,
		TRAN_DESC,
		HIDE_IN_STMT,
		REASON_4_HIDE_IN_STMT,
		TRANS_ACCOUNT_ID,
		ACH_STANDARD_ENTRY_CLASS_CODE,
		TERMINAL_IDENTIFICATION_CODE,
		TERMINAL_LOCATION,
		TERMINAL_CITY,
		TERMINAL_STATE 
	)
	AS 
	(
SELECT
	a.ACCOUNT_NO,
	itl.INSTITUTION_ID,
	ahi."ACCOUNT_ID",
	ahi."TRANS_CODE",
	ahi."AMOUNT",
	ahi."CHEQUE",
	ahi."TRACE",
	ahi."POST_DATE",
	ahi."EFFECTIVE_DATE",
	ahi."BALANCE",
	ahi."POST_STATUS",
	ahi."SOURCE_NAME",
	ahi."IRA_DIST",
	itl."DESCRIPTION",
	ahi."STATEMENT_DATE",
	ahi."COMPANY_NAME",
	ahi."ENTRY_DATE",
	ahi."CUSTOMER_NO",
	ahi."TRANSACTION_ID",
	ahi."CURRENCY",
	ahi."PAYMENT_ID",
	ahi."POSTED_TO",
	ahi."EVENT_ID",
	ahi."SOURCE_TRANS_CODE",
	ahi."ORG_TRANS_CODE",
	ahi."TRANSACTION_DETAILS",
	ahi."COMPANY_DESCRIPTION",
	ahi."ENTRY_TYPE_ID",
	itl.TRANS_CODE  AS CIF_TRANS_CODE,
	ahi."TRANS_ACCOUNT_NO",
	a."ACCOUNT_TYPE_ID",
	itl."POSTING_SEQUENCE",
	ahi.DESCRIPTION AS TRAN_DESC,
	ahi."HIDE_IN_STMT",
	ahi."REASON_4_HIDE_IN_STMT",
	ahi.TRANS_ACCOUNT_ID ,
	ACH_STANDARD_ENTRY_CLASS_CODE,
	TERMINAL_IDENTIFICATION_CODE,
	TERMINAL_LOCATION,
	TERMINAL_CITY,
	TERMINAL_STATE 
FROM
	DEPOSIT_ACCOUNT_VW a,
	ACCOUNT_HISTORY_ITEM ahi,
	INSTITUTION_TRANSCODE_LOOKUP itl ,
	entry_type et 
WHERE
	a.ACCOUNT_ID=ahi.ACCOUNT_ID AND
	a.INSTITUTION_ID=itl.INSTITUTION_ID AND
	a.ACCOUNT_TYPE_ID=itl.ACCOUNT_TYPE_ID AND
	itl.ENTRY_TYPE= ahi.TRANS_CODE AND
	et.id=itl.TRANS_CODE AND
	et.INSTITUTION_ID = itl.INSTITUTION_ID 
	);


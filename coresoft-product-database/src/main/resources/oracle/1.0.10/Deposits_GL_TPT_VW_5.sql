CREATE OR REPLACE VIEW GL_TRANSACTION_POSTTODAY_VW AS
SELECT 	tp.account_id,
  	tp.account_number,
   	b.branch_id,
  	TP.INSTITUTION_ID,
  	TP.AMOUNT,
  	TP.TRANSACTION_ID,
  	TP.TRANS_CODE,
  	TP.DESCRIPTION,
  	TP.POST_STATUS,
  	TP.EFFECTIVE_DATE,
  	TP.ENTRY_DATE,
  	TP.SOURCE_NAME,
  	da.ACCOUNT_TYPE_ID,
  	TP.POST_DATE,
 	DA.ACCOUNT_CATEGORY,
 	P.PRODUCT_TYPE_ID
FROM 	transaction_posttoday tp,
 	deposit_account_vw da,
 	branch b,
 	PRODUCT_TYPE P
WHERE 	tp.account_number = da.account_no(+)
 	AND tp.institution_id = da.institution_id(+)
 	AND da.assigned_branch = b.unique_id(+)
 	AND DA.PRODUCT_ID=P.UNIQUE_ID(+);
 	
 CREATE OR REPLACE VIEW GL_TRANSACTION_POSTTODAY_VW AS
SELECT 	tp.account_id,
  	tp.account_number,
   	b.branch_id,
  	TP.INSTITUTION_ID,
  	TP.AMOUNT,
  	TP.TRANSACTION_ID,
  	TP.TRANS_CODE,
  	TP.DESCRIPTION,
  	TP.POST_STATUS,
  	TP.EFFECTIVE_DATE,
  	TP.ENTRY_DATE,
  	TP.SOURCE_NAME,
  	da.ACCOUNT_TYPE_ID,
  	TP.POST_DATE,
 	DA.ACCOUNT_CATEGORY,
 	P.PRODUCT_TYPE_ID,
        DA.STATUS_CODE
FROM 	transaction_posttoday tp,
 	deposit_account_vw da,
 	branch b,
 	PRODUCT_TYPE P
WHERE 	tp.account_number = da.account_no(+)
 	AND tp.institution_id = da.institution_id(+)
 	AND da.assigned_branch = b.unique_id(+)
 	AND DA.PRODUCT_ID=P.UNIQUE_ID(+);
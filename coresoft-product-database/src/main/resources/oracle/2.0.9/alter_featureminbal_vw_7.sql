CREATE
	OR
REPLACE
	VIEW FEATURE_MINIMUM_BALANCE 
	(
		DEFAULT_VALUE,
		FEATURE_DESC,
		ACCOUNT_ID,
		ACCOUNT_NO,
		INSTITUTION_ID 
	)
	AS 
SELECT
	PF.DEFAULT_VALUE,
	FEATURE_DESC,
	da.ACCOUNT_ID ,
	da.ACCOUNT_NO,
	i.INSTITUTION_ID 
FROM

	PRODUCT_TYPE pt,
	DEPOSIT_ACCOUNT_VW da,
	INSTITUTION i,
	feature f,
	PRODUCT_FEATURE pf,
	product p 
WHERE
	da.PRODUCT_ID=pt.UNIQUE_ID AND
	
	da.INSTITUTION_ID=i.INSTITUTION_ID AND
	pf.feature_uid = f.feature_uid AND
	pf.PRODUCT_UID = p.PRODUCT_UID AND
	pt.UNIQUE_ID = p.PRODUCT_TYPE_ID AND
	f.FEATURE_DESC LIKE 'MINIMUM_BALANCE' AND
	da.CLASS_CODE=p.PROD_SUB_TYPE_ID AND
	ACCOUNT_TYPE_ID='22';


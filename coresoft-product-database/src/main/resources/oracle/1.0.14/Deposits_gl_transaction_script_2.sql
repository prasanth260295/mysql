CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;
 	
CREATE OR REPLACE VIEW PARTY_ACCT_MULTIPLE_ROLES_VW
AS
SELECT UNIQUE_ASSOCIATION_ID FROM PARTY_ACCOUNT_ROLE_VW
 GROUP BY UNIQUE_ASSOCIATION_ID HAVING COUNT(*) > 1;
    
CREATE OR REPLACE VIEW DEPOSIT_RELATED_ACCTS_INTER_VW AS 
SELECT PA.ACCOUNT_NO ,
		DA.INSTITUTION_ID,
		DA.ACCOUNT_TYPE_ID,
        PA.ACCOUNT_ID,
        DA.LEDGER_BALANCE,
	    DA.STATUS_CODE,
    PA.INSTITUTION_ASSOCIATION_ID ,
    PA.UNIQUE_ASSOCIATION_ID ,
    PA.RESPONSIBILITY_TYPE,
    PA.UNIQUE_PARTY_ROLE_ID
FROM PARTY_ACCOUNT_ROLE_VW PA, DEPOSIT_ACCOUNT_VW DA, PARTY_ACCT_MULTIPLE_ROLES_VW PAM
WHERE PA.ACCOUNT_ID=DA.ACCOUNT_ID AND PA.UNIQUE_ASSOCIATION_ID = PAM.UNIQUE_ASSOCIATION_ID;

 
CREATE  OR REPLACE VIEW  DEPOSIT_RELATED_ACCOUNTS_VW AS
SELECT 
	A1.ACCOUNT_ID,
	A1.ACCOUNT_NO,
	A1.INSTITUTION_ID,
	A1.LEDGER_BALANCE,
	A1.ACCOUNT_TYPE_ID,
	A1.STATUS_CODE,
	A2.ACCOUNT_ID AS RELATED_ACCOUNT_ID,
    A2.ACCOUNT_NO AS RELATED_ACCOUNT_NO,
    A2.INSTITUTION_ID AS RELATED_ACCOUNT_INST_ID,
    A2.LEDGER_BALANCE AS RELATED_ACCT_LEDGER_BALANCE, 
    A2.ACCOUNT_TYPE_ID AS RELATED_ACCOUNT_TYPE_ID,
    A2.STATUS_CODE AS RELATED_ACCOUNT_STATUS_CODE
FROM DEPOSIT_RELATED_ACCTS_INTER_VW A1 ,
    DEPOSIT_RELATED_ACCTS_INTER_VW A2
WHERE A1.UNIQUE_ASSOCIATION_ID=A2.UNIQUE_ASSOCIATION_ID AND A1.ACCOUNT_ID<>A2.ACCOUNT_ID
GROUP BY A1.ACCOUNT_ID, A1.ACCOUNT_NO, A1.INSTITUTION_ID, A1.LEDGER_BALANCE, A1.ACCOUNT_TYPE_ID, A1.STATUS_CODE,
    A2.ACCOUNT_ID, A2.ACCOUNT_NO, A2.INSTITUTION_ID, A2.LEDGER_BALANCE, A2.ACCOUNT_TYPE_ID, A2.STATUS_CODE ;
    
    --Hold Extract

CREATE	OR REPLACE VIEW HOLD_EXTRACT_FILE_VW 
	(
		DP_Acct_Identifier,
		DP_Acct_Identifier_1,
		DP_Acct_Identifier_2,
		DP_Acct_Identifier_3,
		DP_Acct_Identifier_4,
		DP_Acct_Identifier_5,
		DP_Sub_Acct_Identifier,
		HD_Hold_Amt,
		HD_Hold_Reason,
		HD_Hold_Desc,
		HD_Hold_Start_Dt,
		HD_Hold_Exp_Dt 
	)
	AS 
SELECT 	a.ACCOUNT_NO DP_Acct_Identifier,
	'' DP_Acct_Identifier_1,
	'' DP_Acct_Identifier_2,
	'' DP_Acct_Identifier_3,
	'' DP_Acct_Identifier_4,
	'' DP_Acct_Identifier_5,
	'' DP_Sub_Acct_Identifier,
	nvl(b.hold_amount,0) HD_Hold_Amt,
	nvl(b.HOLD_TYPE_ID,'') HD_Hold_Reason,
	nvl(b.DESCRIPTION,'') HD_Hold_Desc,
	to_char(b.EFFECTIVE_START_DATE,'yyyymmdd') HD_Hold_Start_Dt,
	to_char(b.EFFECTIVE_EXPIRE_DATE,'yyyymmdd') HD_Hold_Exp_Dt 
FROM
	(	SELECT
			a.ACCOUNT_ID,
			a.ACCOUNT_NO 
		FROM
			DEPOSIT_ACCOUNT da ,
			ACCOUNT a 
		WHERE
			da.ACCOUNT_ID=a.ACCOUNT_ID 
	)
	a,
	(	SELECT
			a.ACCOUNT_ID,
			nvl(hp.hold_amount,'') hold_amount,
			'FD' HOLD_TYPE_ID,
			dai.DESCRIPTION,
			dai.EFFECTIVE_START_DATE,
			dai.EFFECTIVE_EXPIRE_DATE 
		FROM
			DEPOSIT_ACCOUNT da ,
			ACCOUNT a ,
			DEPOSIT_ACCOUNT_INSTRUCTION dai,
			HOLD_PAYMENT hp 
		WHERE
			da.ACCOUNT_ID=a.ACCOUNT_ID AND
			da.ACCOUNT_ID=dai.ACCOUNT_ID AND
			dai.INSTRUCTION_ID=hp.INSTRUCTION_ID AND
			hp.hold_type_id='8' 
	)
	b 
WHERE
	a.ACCOUNT_ID=b.ACCOUNT_ID(+) ;



--Customer Extract File:


create  or replace view  customer_file_extract_vw  as

SELECT
	distinct  pia.INSTITUTION_ASSOCIATION_ID CS_Cust_Identifier ,
	nvl(SSN.PARTY_REGISTERD_ID,nvl(TIN.PARTY_REGISTERD_ID,'')) CS_Tax_ID ,
	nvl(SSN.TYPE,nvl(TIN.TYPE,'')) CS_Tax_Code ,
	substr((prs.FIRST_NAME||''||prs.MIDDLE_NAME||''||prs.LAST_NAME),0,100) 
	CS_Name_Line_1 ,
	nvl(substr((prs.FIRST_NAME||''||prs.MIDDLE_NAME||''||prs.LAST_NAME),100,200)
	,'') CS_Name_Line_2,
	nvl(prs.LAST_NAME,'') CS_Last_Name,
	nvl(prs.FIRST_NAME,'') CS_First_Name,
	nvl(prs.MIDDLE_NAME,'') CS_Middle_Name,
	'' CS_Suffix ,
	nvl(prs.SUFFIX,'') CS_Generation,
	nvl(prs.PREFIX,'') CS_Prefix,
	nvl((to_char(prs.DATE_OF_BIRTH,'yyyymmdd')),'') CS_Birth_Dt,
	nvl(substr(org.BUSINESS_NAME,0,100),'') CS_Ent_Name_Line_1,
	nvl(substr(org.BUSINESS_NAME,100,200),'') CS_Ent_Name_Line_2,
	nvl(substr(LINE_1||' '||nvl(LINE_2 ,'')||' '||nvl(LINE_3 ,'')||' '||City||
	' '||STATE||' '||ZIP_1,0,100),'') CS_Nar_Addr_Line_1,
	nvl(substr(LINE_1||' '||nvl(LINE_2 ,'')||' '||nvl(LINE_3 ,'')||' '||City||
	' '||STATE||' '||ZIP_1,100,200),'') CS_Nar_Addr_Line_2,
	nvl(substr(LINE_1||' '||nvl(LINE_2 ,'')||' '||nvl(LINE_3 ,'')||' '||City||
	' '||STATE||' '||ZIP_1,200,300),'') CS_Nar_Addr_Line_3,
	nvl(substr(LINE_1,0,100),'') CS_Street_Address_1,
	nvl(substr(nvl(LINE_2 ,'')||''||nvl(LINE_3 ,''),0,100),'') 
	CS_Street_Address_2,
	nvl(substr(CITY,0,25),'')CS_City ,
	nvl(substr(STATE,0,2),'')CS_State,
	nvl(substr(ZIP_1,0,10),'') CS_ZIP,
	nvl(substr(COUNTRY,0,10),'')CS_COUNTRY,
	nvl(HOME_PHONE.PHONE,nvl(WORK_PHONE.PHONE,''))CS_Telephone,
	nvl(substr(web.EMAIL_ADDRESS_1,0,150),'')CS_Email 
FROM
	PARTY_INSTITUTION_ASSOCIATION pia,
	PARTY p,
	PERSON prs,
	ORGANIZATION org,
	
	(	SELECT
			p.party_id,
			pri.PARTY_REGISTERD_ID,
			'S' TYPE 
		FROM
			person p,
			PARTY_REGISTERED_IDS pri 
		WHERE
			p.party_id=pri.party_id AND
			TYPE='SSN'
	)
	SSN ,
	(	SELECT
			o.party_id,
			pri.PARTY_REGISTERD_ID,
			'T' TYPE 
		FROM
			ORGANIZATION o,
			PARTY_REGISTERED_IDS pri 
		WHERE
			o.party_id=pri.party_id AND
			TYPE='TIN'
	)
	TIN,
	(	SELECT
			party_id,
			ga.* 
		FROM
			party_address pa1,
			geographic_address ga 
		WHERE
			address_use = 'HOME' AND
			pa1.address_id = ga.address_id 
	)
	home_address,
	(	SELECT
			party_id,
			ta1.* 
		FROM
			party_address pa2,
			telecom_address ta1 
		WHERE
			address_use = 'HOME_PHONE' AND
			pa2.address_id = ta1.address_id 
	)
	home_phone,
	(	SELECT
			party_id,
			ta2.* 
		FROM
			party_address pa3,
			telecom_address ta2 
		WHERE
			address_use = 'WORK_PHONE' AND
			pa3.address_id = ta2.address_id 
	)
	work_phone,
	(	SELECT
			party_id,
			wa2.* 
		FROM
			party_address pa3,
			WEB_address wa2 
		WHERE
			address_use = 'WEB' AND
			pa3.address_id = wa2.address_id 
	)
	web 
WHERE
	p.PARTY_ID=pia.PARTY_ID AND
	p.PARTY_ID=SSN.party_id(+) AND
	p.PARTY_ID=TIN.party_id(+) AND
	p.PARTY_ID=prs.PARTY_ID(+) AND
	p.PARTY_ID=org.PARTY_ID(+) AND
        p.party_id=home_address.Party_id(+) AND
	p.party_id = home_phone.party_id(+) AND
	p.party_id = work_phone.party_id(+) AND
	p.PARTY_ID=web.PARTY_ID(+);



--Deposit-Customer Extract File

CREATE
	OR
REPLACE
	VIEW dep_cust_ext_join_vw 
	(
		CS_Cust_Identifier,
		DP_Acct_Identifier,
		DP_Acct_Identifier_1,
		DP_Acct_Identifier_2,
		DP_Acct_Identifier_3,
		DP_Acct_Identifier_4,
		DP_Acct_Identifier_5,
		DP_Sub_Acct_Identifier, 
		CS_Rel_Code,
		CS_BENE_CODE 
	)
	AS 
SELECT
	nvl(substr(pia.INSTITUTION_ASSOCIATION_ID,0,25),'') CS_Cust_Identifier,
	da.ACCOUNT_NO  DP_Acct_Identifier,
        '' DP_Acct_Identifier_1,
	'' DP_Acct_Identifier_2,
	'' DP_Acct_Identifier_3,
	'' DP_Acct_Identifier_4,
	'' DP_Acct_Identifier_5,
	'' DP_Sub_Acct_Identifier,
	decode(ao.RESPONSIBILITY_TYPE ,0,'AUT',1,'BNF',16,'CUS',12,'DBA',8,'ATF',11,
	'GDN',6,'MIN',9,'PRI',10,'TTE','OT') CS_Rel_Code,
	CASE 
		WHEN (da.PLAN_ID IS NOT NULL AND
		da.ACCOUNT_TYPE_ID='22') 
		THEN 'I' 
		WHEN RESPONSIBILITY_TYPE=14 
		THEN 'P' 
		WHEN RESPONSIBILITY_TYPE=10 
		THEN decode(OWNERSHIP_DESIGNATION,3,'R',12,'T','') 
		ELSE decode(OWNERSHIP_DESIGNATION,4,'M','') 
	END CS_BENE_CODE 
FROM
	DEPOSIT_ACCOUNT_VW da,
	PARTY_ACCOUNT_ROLE par,
	PARTY_ROLE pr,
	PARTY_INSTITUTION_ASSOCIATION pia,
	ACCOUNT_OWNER ao 
WHERE
	da.ACCOUNT_ID=par.ACCOUNT_ID AND
	par.UNIQUE_PARTY_ROLE_ID=pr.UNIQUE_PARTY_ROLE_ID AND
	pr.UNIQUE_ASSOCIATION_ID=pia.UNIQUE_ASSOCIATION_ID AND
	pr.UNIQUE_PARTY_ROLE_ID=ao.UNIQUE_PARTY_ROLE_ID  ;

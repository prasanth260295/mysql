CREATE OR REPLACE VIEW "ACTIVITY_LOG_VW" ( "UNIQUE_ID", "ACCOUNT_NUMBER", "CARD_NUMBER", "STATUS_CODE", "CARD_STATUS", "LIMIT_GROUP", "EMBOSS_NAME", "ACCOUNT_TYPE", "FIRST_NAME", "LAST_NAME", "MIDDLE_NAME", "ADDRESS_LINE1", "ADDRESS_LINE2", "WORK_PHONE", "HOME_PHONE", "SSN_TIN", "PID", "MMN", "DOB", "CITY", "STATE", "ZIP" )
AS
SELECT
	DISTINCT isos.SUBCRIPTION_ID,
	isos.PRIMARY_ACCOUNT_NUMBER,
	isos.subscription_number,
	dav.status_code,
	isos.STATUS,
	lg.NAME,
	dbc.EMBOSS_LINE1,
	dav.ACCOUNT_TYPE_ID,
	p.FIRST_NAME,
	p.LAST_NAME,
	p.MIDDLE_NAME,
	ga.LINE_1,
	ga.LINE_2,
	
	case when  hta.phone is not null and cta.phone is not null then hta.phone  
    else wta.phone  
    end as CUST_DAYTIME_PHONE,
case when cta.PHONE  IS not null then cta.PHONE  
    else hta.phone  
    end as CUST_EVENING_PHONE,
	ssn_tin.PARTY_REGISTERD_ID,
	dl.party_registerd_id,
	p.MOTHERS_MAIDEN_NAME,
	p.DATE_OF_BIRTH,
	ga.CITY,
	ga.STATE,
	ga.ZIP_1 
FROM
	PARTY_ACCOUNT_ROLE_VW parvw,
	party_institution_association pia,
	account_owner ao,
	deposit_Account_vw dav,
	person p,
	organization org,
	PARTY_REGISTERED_IDS prid,
	(	SELECT
			* 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_use IN ('OTHERS',
			'HOME_PHONE',
			'WORK_PHONE',
			'CELL_PHONE',
			'WEB')
	)
	PA,
	geographic_address ga,
	TELECOM_ADDRESS WTA,
	TELECOM_ADDRESS HTA,
	TELECOM_ADDRESS CTA,
	WEB_ADDRESS WA ,
	(	SELECT
			address_id,
			PARTY_ID ,
			UNIQUE_PARTY_ADDRESS_ID 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_USE = 'OTHERS' 
	)
	OTHERS,
	(	SELECT
			MAX(address_id) address_id,
			PARTY_ID 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_USE = 'WORK_PHONE' 
		GROUP BY
			party_id 
	)
	TPAW ,
	(	SELECT
			MAX(address_id) address_id,
			PARTY_ID 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_USE = 'HOME_PHONE' 
		GROUP BY
			party_id 
	)
	TPAH ,
	(	SELECT
			MAX(address_id) address_id,
			PARTY_ID 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_USE = 'CELL_PHONE' 
		GROUP BY
			party_id 
	)
	TPCP ,
	(	SELECT
			MAX(address_id) address_id,
			PARTY_ID 
		FROM
			PARTY_ADDRESS 
		WHERE
			ADDRESS_USE = 'WEB' 
		GROUP BY
			party_id 
	)
	WPA,
	(	SELECT
			* 
		FROM
			PARTY_REGISTERED_IDS 
		WHERE
			TYPE IN ('SSN',
			'TIN')
	)
	ssn_tin,
	(	SELECT
			* 
		FROM
			PARTY_REGISTERED_IDS 
		WHERE
			TYPE LIKE 'Driver%'
	)
	dl,
	debitcard_SUBSCRIPTION_TYPE IST,
	debitcard_SUBSCRIPTION ISOS,
	LIMIT_GROUP LG,
	SUBSCRIBER sub,
	debitcard_USER dbc,
	MAINTENANCE_LOG_VW mv,
	PARTY_ASSOC_MAINT_LOG pv,
	ACCOUNT_STATEMENT_GENERATOR asg,
	ACCOUNT_STATEMENT_ADDRESS asa 
WHERE
	isos.LIMIT_GROUP_ID=lg.LIMIT_GROUP_ID AND
	isos.TYPE_ID=ist.TYPE_ID AND
	isos.SUBSCRIBER_ID=sub.SUBSCRIBER_ID AND
	isos.PRIMARY_USER_ID=dbc.USER_ID AND
	dav.account_no=isos.PRIMARY_ACCOUNT_NUMBER AND
	parvw.ACCOUNT_ID =dav.ACCOUNT_ID(+) AND
	asg.account_id=dav.account_id AND
	asg.unique_id=asa.unique_id AND
	asa.UNIQUE_PARTY_ADDRESS_ID=pa.UNIQUE_PARTY_ADDRESS_ID
	--and parvw.party_id=pa.party_id
	AND
	parvw.party_id=dbc.core_party_id AND
	mv.account_id(+)=dav.account_id AND
	pv.UNIQUE_ASSOCIATION_ID(+)=pia.UNIQUE_ASSOCIATION_ID AND
	PARVW.UNIQUE_PARTY_ROLE_ID =AO.UNIQUE_PARTY_ROLE_ID
	--and pv.UNIQUE_ASSOCIATION_ID
	AND
	PARVW.PARTY_ID = PRID.PARTY_ID(+) AND
	PARVW.PARTY_ID=P.PARTY_ID(+) AND
	PARVW.PARTY_ID=org.PARTY_ID(+) AND
	parvw.unique_association_id=pia.unique_association_id AND
	pia.party_id=parvw.party_id AND
	pa.UNIQUE_PARTY_ADDRESS_ID=OTHERS.UNIQUE_PARTY_ADDRESS_ID(+) AND
	OTHERS.address_id=ga.address_id(+) AND
	PARVW.PARTY_ID = TPAW.PARTY_ID (+) AND
	PARVW.PARTY_ID = TPAH.PARTY_ID (+) AND
	PARVW.PARTY_ID = TPCP.PARTY_ID (+) AND
	TPAW.ADDRESS_ID = WTA.ADDRESS_ID(+) AND
	TPAH.ADDRESS_ID = HTA.ADDRESS_ID(+) AND
	TPCP.ADDRESS_ID = CTA.ADDRESS_ID(+) AND
	parvw.party_id=WPA.PARTY_ID (+) AND
	wpa.ADDRESS_ID=WA.ADDRESS_ID(+) AND
	PARVW.PARTY_ID = SSN_TIN.PARTY_ID(+) AND
	PARVW.PARTY_ID = dl.PARTY_ID(+) 
	and (trunc(isos.status_time) between trunc(sysdate-1) and trunc(sysdate) 
	or trunc(mv.entry_date) between trunc(sysdate-1) and trunc(sysdate)
	or trunc(pv.entry_date) between trunc(sysdate-1) and trunc(sysdate));
 
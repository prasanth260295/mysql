CREATE OR REPLACE VIEW ORDERED_CARDS_REPORT_VW AS
 SELECT
 isos.SUBCRIPTION_ID ID,
 to_char('510659') PARTICIPANT_ID,
 IST.NAME CUSTOMER_TYPE,
 ISOS.SUBSCRIPTION_NUMBER CUST_ID_NO,
 to_char('0000') MEMBER_NO,
 ISOS.EXPIRATION_DATE EXPIRATION_DATE,
 to_number(1) NO_OF_ACCOUNTS ,
 to_number(001) DEFAULT_ACCOUNT_TYPE,
 to_number(001) DEFAULT_ACCOUNT_QUALIFIER,
 ATL.ACCOUNT_TYPE_ID ACCOUNT_TYPE,
 to_number(001 ) ACCOUNT_QUALIFIER,
 ISOS.PRIMARY_ACCOUNT_NUMBER ACCOUNT_NUMBER ,
 to_number(01) NO_OF_PLASTICS,
 ISOS.REISSUE_TERM REISSUE_VALUE,
 '' SPECIAL_HANDLING_INDICATOR,
 'N' BLOCKED_CARD_INDICATOR ,
 to_number(0) PIN_INDICATOR,
 '06' PIN_BLOCK,
 to_number(00) NO_OF_CHECKS,
 to_number(0) EMP_SECURITY_LEVEL,
 '' FEE_GROUP_NAME,
 LG.NAME LIMIT_GROUP_NAME,
 '' CH_RESTRICT_TRANS_INDICATOR,
 ISOS.STATUS CARD_ACTIVATION_INDICATOR,
 ISOS.PRIOR_EXPIRATION_DATE PRIOR_EXPIRE_DATE,
 '' CAVV_CARD_OPTION,
 '' ENTRY_MODE_RESTRICT,
 P.LAST_NAME CUST_LNAME,
 decode(P.FIRST_NAME,NULL,o.BUSINESS_NAME,p.FIRST_NAME) CUST_FNAME,
 substr(P.MIDDLE_NAME, 1, 1) CUST_MIDDLE_INTIAL,
 '' CUST_LNAME2,
 '' CUST_FNAME2,
 '' CUST_MIDDLE_INTIAL2,
 to_number(0) NO_OF_PLASTICS_TO_ISSUE ,
 ga.LINE_1 CUST_ADDRESS_LINE1,
 ga.LINE_2 CUST_ADDRESS_LINE2,
 ga.CITY CUST_CITY,
 ga.STATE CUST_STATE,
 ga.ZIP_1||' '||ga.ZIP_2 CUST_ZIP,
 ga.COUNTRY COUNTRY_CODE,
 CASE
  WHEN TAhp.phone IS NOT NULL
  THEN TAhp.phone
  ELSE tawp.phone
 END AS CUST_DAYTIME_PHONE,
 CASE
  WHEN TAcp.PHONE IS NOT NULL
  THEN TAcp.PHONE
  ELSE TAhp.phone
 END AS CUST_EVENING_PHONE,
 DBC.EMBOSS_LINE1 EMBOSS_NAME,
 '' CUST_REMARKS,
 '' CUST_ACCOUNT_DESC,
 ssn_tin.PARTY_REGISTERD_ID SSN,
 P. MOTHERS_MAIDEN_NAME MOTHER_MAIDEN_NAME,
 P.DATE_OF_BIRTH DOB,
 '' VRU_PASSWORD,
 DRID.PARTY_REGISTERD_ID DRIVERS_LICENSE_NO,
 DRID.EFFECTIVE_END_DATE DRIVERS_LICENSE_EXP_DATE,
 DBC.EMBOSS_LINE2 SECOND_EMBOSS_LINE,
 ISOS.ORDERED_TIME,
 ISOS.ORDERED_BY,
 ISOS.ORDERED_FROM,
 ISOS.REJECTED_TIME,
 ISOS.REJECT_REMARKS,
 ISOS.REJECTED_BY_BRANCH,
 BA.Institution_ID INSTITUTION_ID
FROM
 ACCOUNT AC,
 PARTY_ACCOUNT_ROLE_VW parv,
 address ad,
 party_address pa,
 ( SELECT
   p.party_id,
   MAX(ta.ADDRESS_ID) ADDRESS_ID
  FROM
   party p,
   party_address pa,
   TELECOM_ADDRESS ta
  WHERE
   p.party_id=pa.party_id AND
   pa.address_id=ta.address_id AND
   pa.ADDRESS_USE='WORK_PHONE'
  GROUP BY
   p.PARTY_ID
 )
 ta,
 ( SELECT
   p.party_id,
   MAX(ta.ADDRESS_ID) ADDRESS_ID
  FROM
   party p,
   party_address pa,
   TELECOM_ADDRESS ta
  WHERE
   p.party_id=pa.party_id AND
   pa.address_id=ta.address_id AND
   pa.ADDRESS_USE='HOME_PHONE'
  GROUP BY
   p.PARTY_ID
 )
 ta1,
 ( SELECT
   p.party_id,
   MAX(ta.ADDRESS_ID) ADDRESS_ID
  FROM
   party p,
   party_address pa,
   TELECOM_ADDRESS ta
  WHERE
   p.party_id=pa.party_id AND
   pa.address_id=ta.address_id AND
   pa.ADDRESS_USE='CELL_PHONE'
  GROUP BY
   p.PARTY_ID
 )
 ta2,
 ACCOUNT_STATEMENT_ADDRESS asa,
 ACCOUNT_STATEMENT_GENERATOR asg,
 ACCOUNT_OWNER ao,
 INSTITUTION BA,
 debitcard_SUBSCRIPTION_TYPE IST,
 debitcard_SUBSCRIPTION ISOS,
 LIMIT_GROUP LG,
 SUBSCRIBER sub,
 debitcard_USER dbc,
 ACCOUNT_TYPE_LOOKUP ATL,
 ( SELECT
   *
  FROM
   PARTY_REGISTERED_IDS
  WHERE
   TYPE='Driver''s License'
 )
 DRID,
 Party pr,
 Person p,
 Organization o,
 GEOGRAPHIC_ADDRESS ga,
 Telecom_address tawp,
 Telecom_address tahp,
 Telecom_address taCp,
 ( SELECT
   *
  FROM
   PARTY_REGISTERED_IDS
  WHERE
   TYPE IN ('SSN',
   'TIN')
 )
 ssn_tin
WHERE
 isos.LIMIT_GROUP_ID=lg.LIMIT_GROUP_ID AND
 isos.TYPE_ID=ist.TYPE_ID AND
 isos.SUBSCRIBER_ID=sub.SUBSCRIBER_ID AND
 isos.PRIMARY_USER_ID=dbc.USER_ID AND
 isos.BANK_ID=ba.INSTITUTION_UNIQUE_ID AND
--isos.PRIMARY_ACCOUNT_ID=ac.ACCOUNT_ID(+) AND
 ac.CONTRACT_TYPE_ID=atl.ACCOUNT_TYPE_ID(+) AND
 parv.ACCOUNT_ID=ac.ACCOUNT_ID AND
 parv.PARTY_ID=pr.PARTY_ID AND
 parv.UNIQUE_PARTY_ROLE_ID=ao.UNIQUE_PARTY_ROLE_ID AND
 ac.ACCOUNT_ID=asg.ACCOUNT_ID AND
 asg.UNIQUE_ID=asa.UNIQUE_ID AND
 asa.UNIQUE_PARTY_ADDRESS_ID=pa.UNIQUE_PARTY_ADDRESS_ID AND
 pa.ADDRESS_ID=ad.ADDRESS_ID AND
 ad.ADDRESS_ID=ga.ADDRESS_ID AND
 pa.party_id=ta.party_id(+) AND
 pa.party_id=ta1.party_id(+) AND
 pa.party_id=ta2.party_id(+) AND
 ta.address_id=tawp.address_id(+) AND
 ta1.address_id=tahp.address_id(+) AND
 ta2.address_id=taCp.address_id(+) AND
 pr.party_id=ssn_tin.party_id AND
 pr.party_id=drid.party_id(+) AND
 pr.party_id=p.party_id(+) AND
 pr.party_id=o.party_id(+) AND
 parv.RESPONSIBILITY_TYPE=9
ORDER BY
 isos.SUBCRIPTION_ID;
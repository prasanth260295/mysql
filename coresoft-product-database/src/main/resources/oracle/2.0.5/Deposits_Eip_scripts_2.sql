CREATE OR REPLACE FORCE VIEW "TPT_TXN_REVIEW_VW" ("TRANSACTION_ID", "AMOUNT", "TRANS_CODE", "INSTITUTION_ID", "ACCOUNT_NUMBER", "ACCOUNT_ID", "ACCOUNT_TYPE_ID", "DESCRIPTION", "EFFECTIVE_DATE", "ENTRY_DATE", "POST_STATUS", "REASON_ID", "REASON_DESCRIPTION", "REASON_DETAIL", "CHEQUE", "EVENT_ID", "FILE_NAME", "PAYMENT_ID", "POST_DATE", "SOURCE_NAME", "TRACE", "BATCH_NUMBER", "SERIAL_NUMBER", "COMPANY_NAME", "COMPANY_DESCRIPTION", "COMPANY_CUST_NUMBER", "COMPANY_ID", "ENTRY_TYPE_ID", "ACH_TRAN_CODE", "ACH_STANDARD_ENTRY_CLASS_CODE", "ACH_FRABA_ID", "ACH_PROCESSING_DATE", "ACH_DFI_ACCOUNT_NUMBER", "REQUIRED_PARAMS", "ACH_CHECK_SERIAL_NUMBER", "TRANS_ACCOUNT_NO", "TRANS_INSTITUTION_ID", "TRANS_ACCOUNT_ID", "STOP_PAYMENT_INST_ID", "OPERATOR_ID", "ORIGIN_INSTITUTION_ID", "REVERSAL_DATE", "TERMINAL_IDENTIFICATION_CODE", "TERMINAL_LOCATION", "TERMINAL_CITY", "TERMINAL_STATE", "ROUTING_TRANSIT_NUMBER", "TXN_REVIEW", "STATE", "DECISION_TYPE", "WAIVE_FEE", "WAIVE_NOTICES", "REMARKS", "OVERDRAFT_LIMIT_CODE", "LEDGER_BALANCE", "AVAILABLE_BALANCE", "DEBIT_OR_CREDIT", "BRANCH_ID", "BRANCH_NAME") AS
  (select tpt.TRANSACTION_ID,tpt.AMOUNT,tpt.TRANS_CODE,tpt.INSTITUTION_ID,tpt.ACCOUNT_NUMBER,tpt.ACCOUNT_ID,
tpt.ACCOUNT_TYPE_ID,tpt.DESCRIPTION,tpt.EFFECTIVE_DATE,tpt.ENTRY_DATE,tpt.POST_STATUS,tpt.REASON_ID,
tpt.REASON_DESCRIPTION,tpt.REASON_DETAIL,tpt.CHEQUE,tpt.EVENT_ID,tpt.FILE_NAME,tpt.PAYMENT_ID,
tpt.POST_DATE,tpt.SOURCE_NAME,tpt.TRACE,tpt.BATCH_NUMBER,tpt.SERIAL_NUMBER,tpt.COMPANY_NAME,
tpt.COMPANY_DESCRIPTION,tpt.COMPANY_CUST_NUMBER,tpt.COMPANY_ID,tpt.ENTRY_TYPE_ID,tpt.ACH_TRAN_CODE,
tpt.ACH_STANDARD_ENTRY_CLASS_CODE,tpt.ACH_FRABA_ID,tpt.ACH_PROCESSING_DATE,tpt.ACH_DFI_ACCOUNT_NUMBER,tpt.REQUIRED_PARAMS,
tpt.ACH_CHECK_SERIAL_NUMBER,tpt.TRANS_ACCOUNT_NO,tpt.TRANS_INSTITUTION_ID,tpt.TRANS_ACCOUNT_ID,tpt.STOP_PAYMENT_INST_ID,
tpt.OPERATOR_ID,tpt.ORIGIN_INSTITUTION_ID,tpt.REVERSAL_DATE,tpt.TERMINAL_IDENTIFICATION_CODE,tpt.TERMINAL_LOCATION,
tpt.TERMINAL_CITY,tpt.TERMINAL_STATE,tpt.ROUTING_TRANSIT_NUMBER,tpt.TXN_REVIEW,tpt.STATE,tpt.DECISION_TYPE,
tpt.WAIVE_FEE,tpt.WAIVE_NOTICES,tpt.REMARKS,da.overdraft_limit_code,d.ledger_balance,d.AVAILABLE_BALANCE,e.debit_or_credit, br.branch_id , br.branch_name from transaction_posttoday tpt, deposit_account da,deposit d, entry_type e, branch br
where tpt.account_id = da.ACCOUNT_ID(+)
and da.ASSIGNED_BRANCH = br.unique_id(+)
and da.account_id=d.account_id
and tpt.entry_type_id=e.unique_id
and tpt.txn_review = 'yes'
);


  CREATE OR REPLACE FORCE VIEW "ACCOUNT_DETAILS_VW" ("ACCOUNT_ID", "ACCOUNT_NO", "INSTITUTION_ID", "ACCOUNT_TYPE_ID", "LEDGER_BALANCE", "AVAILABLE_BALANCE", "DATE_OPENED", "CURRENT_BALANCE", "UNCOLLECTED_BALANCE", "OVERDRAFT_CODE", "CREATION_DATE", "DATE_LAST_MAINTAINED", "RETURNS_LAST_YR", "TIMES_NSF_CURR_PERIOD", "TIMES_NSF_YTD", "TIMES_OD_CURR_PERIOD", "TIMES_OD_YTD", "OVERDRAFT_LIMIT") AS
  (SELECT acc.account_id,de.ACCOUNT_NO,acc.INSTITUTION_ID,de.account_type_id, de.LEDGER_BALANCE,de.AVAILABLE_BALANCE,acc.DATE_OPENED,
de.CURRENT_BALANCE,de.UNCOLLECTED_BALANCE,de.OVERDRAFT_CODE,de.CREATION_DATE,de.DATE_LAST_MAINTAINED,de.RETURNS_LAST_YR,
de.TIMES_NSF_CURR_PERIOD,de.TIMES_NSF_YTD,
de.TIMES_OD_CURR_PERIOD,de.TIMES_OD_YTD,de.OVERDRAFT_LIMIT FROM ACCOUNT acc, DEPOSIT de
WHERE acc.ACCOUNT_ID = de.ACCOUNT_ID
);


  CREATE OR REPLACE FORCE VIEW "PARTY_ACCOUNT_ROLE_VW" ("ACCOUNT_NO", "PARTY_TYPE", "PARTY_NAME", "BUSINESS_NAME", "FIRST_NAME", "ACCOUNT_ID", "LAST_NAME", "ACCOUNT_TYPE_ID", "EMPLOYER_NAME", "RESPONSIBILITY_TYPE", "ROLE_CREATION_DATE", "BUSINESS_DATE", "ASSOCIATION_DATE", "RELATIONSHIP_WITH_INSTITUTION", "ASSIGNED_OFFICER", "PARTY_ID", "INSTITUTION_ID", "INSTITUTION_ASSOCIATION_ID", "UNIQUE_PARTY_ROLE_ID", "ROLE_TYPE_ID", "UNIQUE_ASSOCIATION_ID") AS
  SELECT DE.ACCOUNT_NO, PV.PARTY_TYPE, PV.PARTY_NAME, PV.BUSINESS_NAME, PV.FIRST_NAME,par.account_id, PV.LAST_NAME, DE.ACCOUNT_TYPE_ID,
 PV.EMPLOYER_NAME, AO.RESPONSIBILITY_TYPE, PR.ROLE_CREATION_DATE, PR.BUSINESS_DATE, PIA.ASSOCIATION_DATE,
 PIA.RELATIONSHIP_WITH_INSTITUTION, PIA.ASSIGNED_OFFICER,PV.PARTY_ID, PIA.INSTITUTION_ID,
 PIA.INSTITUTION_ASSOCIATION_ID, PR.UNIQUE_PARTY_ROLE_ID, PR.ROLE_TYPE_ID, PR.UNIQUE_ASSOCIATION_ID
 FROM PARTY_ROLE PR, PARTY_ACCOUNT_ROLE PAR, PARTY_VW PV, ACCOUNT_OWNER AO, PARTY_INSTITUTION_ASSOCIATION PIA,
 ACCOUNT A, DEPOSIT DE WHERE PR.UNIQUE_PARTY_ROLE_ID = PAR.UNIQUE_PARTY_ROLE_ID AND
 PAR.UNIQUE_PARTY_ROLE_ID = AO.UNIQUE_PARTY_ROLE_ID AND PIA.PARTY_ID = PV.PARTY_ID AND A.ACCOUNT_ID = PAR.ACCOUNT_ID
 AND PAR.ACCOUNT_ID = DE.ACCOUNT_ID AND PR.UNIQUE_ASSOCIATION_ID = PIA.UNIQUE_ASSOCIATION_ID;


 CREATE OR REPLACE FORCE VIEW "PARTY_VW" ("PARTY_ID", "BUSINESS_NAME", "FIRST_NAME", "LAST_NAME", "EMPLOYER_NAME", "PARTY_TYPE", "PARTY_NAME") AS
  SELECT P.PARTY_ID, O.BUSINESS_NAME, PE.FIRST_NAME, PE.LAST_NAME, PE.EMPLOYER_NAME, P.PARTY_TYPE, NVL(O.BUSINESS_NAME , PE.LAST_NAME||','||PE.FIRST_NAME ) PARTY_NAME FROM PARTY P, PERSON PE, ORGANIZATION O WHERE P.PARTY_ID = PE.PARTY_ID(+) AND P.PARTY_ID = O.PARTY_ID (+);


  CREATE OR REPLACE FORCE VIEW "PARTY_ADDRESS_VIEW_1" ("PARTY_ID", "ADDRESS_ID", "LINE_1", "LINE_2", "CITY", "STATE", "ZIP_1", "PHONE", "ADDRESS_USE", "ADDRESS_TYPE", "EMAIL") AS
  SELECT PA.PARTY_ID,PA.ADDRESS_ID,GA.LINE_1,GA.LINE_2,GA.CITY,GA.STATE,GA.ZIP_1,TA.PHONE,
PA.ADDRESS_USE,A.ADDRESS_TYPE,WA.EMAIL_ADDRESS_1
FROM PARTY_ADDRESS PA,GEOGRAPHIC_ADDRESS GA,TELECOM_ADDRESS TA,ADDRESS A, WEB_ADDRESS WA
WHERE
PA.ADDRESS_ID = A.ADDRESS_ID
AND PA.ADDRESS_ID = GA.ADDRESS_ID (+)
AND PA.ADDRESS_ID = TA.ADDRESS_ID (+)
AND PA.ADDRESS_ID = WA.ADDRESS_ID (+);

CREATE OR REPLACE FORCE VIEW "TPT_TXN_REVIEW_VW" ("TRANSACTION_ID", "AMOUNT", "TRANS_CODE", "INSTITUTION_ID", "ACCOUNT_NUMBER", "ACCOUNT_ID", "ACCOUNT_TYPE_ID", "DESCRIPTION", "EFFECTIVE_DATE", "ENTRY_DATE", "POST_STATUS", "REASON_ID", "REASON_DESCRIPTION", "REASON_DETAIL", "CHEQUE", "EVENT_ID", "FILE_NAME", "PAYMENT_ID", "POST_DATE", "SOURCE_NAME", "TRACE", "BATCH_NUMBER", "SERIAL_NUMBER", "COMPANY_NAME", "COMPANY_DESCRIPTION", "COMPANY_CUST_NUMBER", "COMPANY_ID", "ENTRY_TYPE_ID", "ACH_TRAN_CODE", "ACH_STANDARD_ENTRY_CLASS_CODE", "ACH_FRABA_ID", "ACH_PROCESSING_DATE", "ACH_DFI_ACCOUNT_NUMBER", "REQUIRED_PARAMS", "ACH_CHECK_SERIAL_NUMBER", "TRANS_ACCOUNT_NO", "TRANS_INSTITUTION_ID", "TRANS_ACCOUNT_ID", "STOP_PAYMENT_INST_ID", "OPERATOR_ID", "ORIGIN_INSTITUTION_ID", "REVERSAL_DATE", "TERMINAL_IDENTIFICATION_CODE", "TERMINAL_LOCATION", "TERMINAL_CITY", "TERMINAL_STATE", "ROUTING_TRANSIT_NUMBER", "TXN_REVIEW", "STATE", "DECISION_TYPE", "WAIVE_FEE", "WAIVE_NOTICES", "REMARKS", "OVERDRAFT_LIMIT", "LEDGER_BALANCE", "AVAILABLE_BALANCE", "DEBIT_OR_CREDIT", "BRANCH_ID", "BRANCH_NAME") AS 
  (select tpt.TRANSACTION_ID,tpt.AMOUNT,tpt.TRANS_CODE,tpt.INSTITUTION_ID,tpt.ACCOUNT_NUMBER,tpt.ACCOUNT_ID,
tpt.ACCOUNT_TYPE_ID,tpt.DESCRIPTION,tpt.EFFECTIVE_DATE,tpt.ENTRY_DATE,tpt.POST_STATUS,tpt.REASON_ID,
tpt.REASON_DESCRIPTION,tpt.REASON_DETAIL,tpt.CHEQUE,tpt.EVENT_ID,tpt.FILE_NAME,tpt.PAYMENT_ID,
tpt.POST_DATE,tpt.SOURCE_NAME,tpt.TRACE,tpt.BATCH_NUMBER,tpt.SERIAL_NUMBER,tpt.COMPANY_NAME,
tpt.COMPANY_DESCRIPTION,tpt.COMPANY_CUST_NUMBER,tpt.COMPANY_ID,tpt.ENTRY_TYPE_ID,tpt.ACH_TRAN_CODE,
tpt.ACH_STANDARD_ENTRY_CLASS_CODE,tpt.ACH_FRABA_ID,tpt.ACH_PROCESSING_DATE,tpt.ACH_DFI_ACCOUNT_NUMBER,tpt.REQUIRED_PARAMS,
tpt.ACH_CHECK_SERIAL_NUMBER,tpt.TRANS_ACCOUNT_NO,tpt.TRANS_INSTITUTION_ID,tpt.TRANS_ACCOUNT_ID,tpt.STOP_PAYMENT_INST_ID,
tpt.OPERATOR_ID,tpt.ORIGIN_INSTITUTION_ID,tpt.REVERSAL_DATE,tpt.TERMINAL_IDENTIFICATION_CODE,tpt.TERMINAL_LOCATION,
tpt.TERMINAL_CITY,tpt.TERMINAL_STATE,tpt.ROUTING_TRANSIT_NUMBER,tpt.TXN_REVIEW,tpt.STATE,tpt.DECISION_TYPE,
tpt.WAIVE_FEE,tpt.WAIVE_NOTICES,tpt.REMARKS,d.overdraft_limit,d.ledger_balance,d.AVAILABLE_BALANCE,e.debit_or_credit, br.branch_id , br.branch_name from transaction_posttoday tpt, deposit d, entry_type e, branch br
where tpt.account_number = d.ACCOUNT_no
and d.ASSIGNED_BRANCH = br.unique_id(+)
and tpt.entry_type_id=e.unique_id
and tpt.txn_review = 'yes'
);


  CREATE OR REPLACE FORCE VIEW "PARTY_ACCOUNT_ROLE_VW" ("ACCOUNT_NO", "PARTY_TYPE", "PARTY_NAME", "BUSINESS_NAME", "FIRST_NAME", "ACCOUNT_ID", "LAST_NAME", "ACCOUNT_TYPE_ID", "EMPLOYER_NAME", "RESPONSIBILITY_TYPE", "ROLE_CREATION_DATE", "BUSINESS_DATE", "ASSOCIATION_DATE", "RELATIONSHIP_WITH_INSTITUTION", "ASSIGNED_OFFICER", "PARTY_ID", "INSTITUTION_ID", "INSTITUTION_ASSOCIATION_ID", "UNIQUE_PARTY_ROLE_ID", "ROLE_TYPE_ID", "UNIQUE_ASSOCIATION_ID") AS 
  (SELECT DE.ACCOUNT_NO, PV.PARTY_TYPE, PV.PARTY_NAME, PV.BUSINESS_NAME, PV.FIRST_NAME,par.account_id, PV.LAST_NAME, DE.ACCOUNT_TYPE_ID,
 PV.EMPLOYER_NAME, AO.RESPONSIBILITY_TYPE, PR.ROLE_CREATION_DATE, PR.BUSINESS_DATE, PIA.ASSOCIATION_DATE,
 PIA.RELATIONSHIP_WITH_INSTITUTION, PIA.ASSIGNED_OFFICER,PV.PARTY_ID, PIA.INSTITUTION_ID,
 PIA.INSTITUTION_ASSOCIATION_ID, PR.UNIQUE_PARTY_ROLE_ID, PR.ROLE_TYPE_ID, PR.UNIQUE_ASSOCIATION_ID
 FROM PARTY_ROLE PR, PARTY_ACCOUNT_ROLE PAR, PARTY_VW PV, ACCOUNT_OWNER AO, PARTY_INSTITUTION_ASSOCIATION PIA,
 ACCOUNT A, DEPOSIT DE WHERE PR.UNIQUE_PARTY_ROLE_ID = PAR.UNIQUE_PARTY_ROLE_ID AND
 PAR.UNIQUE_PARTY_ROLE_ID = AO.UNIQUE_PARTY_ROLE_ID AND PIA.PARTY_ID = PV.PARTY_ID AND A.ACCOUNT_ID = PAR.ACCOUNT_ID
 AND PAR.ACCOUNT_ID = DE.ACCOUNT_ID AND PR.UNIQUE_ASSOCIATION_ID = PIA.UNIQUE_ASSOCIATION_ID);
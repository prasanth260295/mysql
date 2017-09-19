  CREATE OR REPLACE FORCE VIEW "TPT_TXN_REVIEW_VW" ("TRANSACTION_ID", "AMOUNT", "TRANS_CODE", "INSTITUTION_ID", "ACCOUNT_NUMBER", "ACCOUNT_ID", "ACCOUNT_TYPE_ID", "DESCRIPTION", "EFFECTIVE_DATE", "ENTRY_DATE", "POST_STATUS", "REASON_ID", "REASON_DESCRIPTION", "REASON_DETAIL", "CHEQUE", "EVENT_ID", "FILE_NAME", "PAYMENT_ID", "POST_DATE", "SOURCE_NAME", "TRACE", "BATCH_NUMBER", "SERIAL_NUMBER", "COMPANY_NAME", "COMPANY_DESCRIPTION", "COMPANY_CUST_NUMBER", "COMPANY_ID", "ENTRY_TYPE_ID", "ACH_TRAN_CODE", "ACH_STANDARD_ENTRY_CLASS_CODE", "ACH_FRABA_ID", "ACH_PROCESSING_DATE", "ACH_DFI_ACCOUNT_NUMBER", "REQUIRED_PARAMS", "ACH_CHECK_SERIAL_NUMBER", "TRANS_ACCOUNT_NO", "TRANS_INSTITUTION_ID", "TRANS_ACCOUNT_ID", "STOP_PAYMENT_INST_ID", "OPERATOR_ID", "ORIGIN_INSTITUTION_ID", "REVERSAL_DATE", "TERMINAL_IDENTIFICATION_CODE", "TERMINAL_LOCATION", "TERMINAL_CITY", "TERMINAL_STATE", "ROUTING_TRANSIT_NUMBER", "TXN_REVIEW", "STATE", "DECISION_TYPE", "WAIVE_FEE", "WAIVE_NOTICES", "REMARKS", "OVERDRAFT_LIMIT", "LEDGER_BALANCE", "AVAILABLE_BALANCE", "DEBIT_OR_CREDIT", "BRANCH_ID", "BRANCH_NAME", "IS_PAYROLL_ACCOUNT") AS 
  (SELECT tpt.TRANSACTION_ID,tpt.AMOUNT,tpt.TRANS_CODE,tpt.INSTITUTION_ID,tpt.ACCOUNT_NUMBER,tpt.ACCOUNT_ID,tpt.ACCOUNT_TYPE_ID,
tpt.DESCRIPTION,tpt.EFFECTIVE_DATE,tpt.ENTRY_DATE,tpt.POST_STATUS,tpt.REASON_ID,tpt.REASON_DESCRIPTION,tpt.REASON_DETAIL,
tpt.CHEQUE,tpt.EVENT_ID,tpt.FILE_NAME,tpt.PAYMENT_ID,tpt.POST_DATE,tpt.SOURCE_NAME,tpt.TRACE,tpt.BATCH_NUMBER,tpt.SERIAL_NUMBER,
tpt.COMPANY_NAME,tpt.COMPANY_DESCRIPTION,tpt.COMPANY_CUST_NUMBER,tpt.COMPANY_ID,tpt.ENTRY_TYPE_ID,tpt.ACH_TRAN_CODE,
tpt.ACH_STANDARD_ENTRY_CLASS_CODE,tpt.ACH_FRABA_ID,tpt.ACH_PROCESSING_DATE,tpt.ACH_DFI_ACCOUNT_NUMBER,tpt.REQUIRED_PARAMS,
tpt.ACH_CHECK_SERIAL_NUMBER,tpt.TRANS_ACCOUNT_NO,tpt.TRANS_INSTITUTION_ID,tpt.TRANS_ACCOUNT_ID,tpt.STOP_PAYMENT_INST_ID,
tpt.OPERATOR_ID,tpt.ORIGIN_INSTITUTION_ID,tpt.REVERSAL_DATE,tpt.TERMINAL_IDENTIFICATION_CODE,tpt.TERMINAL_LOCATION,
tpt.TERMINAL_CITY,tpt.TERMINAL_STATE,tpt.ROUTING_TRANSIT_NUMBER,tpt.TXN_REVIEW,tpt.STATE,tpt.DECISION_TYPE,tpt.WAIVE_FEE,
tpt.WAIVE_NOTICES,tpt.REMARKS,d.overdraft_limit,d.ledger_balance,d.AVAILABLE_BALANCE,e.debit_or_credit,br.branch_id ,
br.branch_name ,d.IS_PAYROLL_ACCOUNT
FROM transaction_posttoday tpt,deposit d,deposit_account da,entry_type e,branch br 
WHERE tpt.account_number = d.ACCOUNT_no AND d.account_id=da.account_id and da.ASSIGNED_BRANCH = br.unique_id(+) AND
tpt.entry_type_id=e.unique_id AND tpt.txn_review = 'yes');


	
CREATE OR REPLACE FORCE VIEW "TOTAL_BKP_ACC_REP_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||' '||p.middle_name||' '||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9','6')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) = TRUNC(i.LAST_PROCESSED_DATE) 

 
order by dv.BRANCH_ID asc,dv.UNREMITTED_BKP_WTHOLD_AMT asc;


	
CREATE OR REPLACE FORCE VIEW "REMITTANCE_DAILY_REPORTS_VIEW" AS

SELECT distinct(bh.CUSTOMER_ID),dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||' '||p.middle_name||' '||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9','6')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(dv.LAST_REMITTED_DATE) =TRUNC(i.LAST_PROCESSED_DATE) 
and dv.LAST_REMITTED_AMT >0

 
order by dv.BRANCH_ID asc,dv.LAST_REMITTED_AMT asc;


	
CREATE OR REPLACE FORCE VIEW "BKP_NOTICE_REPORTS_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||' '||p.middle_name||' '||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
dv.BKP_WITHHOLDING_STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,


BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9','6')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 

 
order by dv.BRANCH_ID asc;
-----------

	
CREATE OR REPLACE FORCE VIEW "TOTAL_BKP_ACC_REP_VW" AS

SELECT distinct(bh.CUSTOMER_ID),bh.NOTIFICATION_TYPE,dv.MTD_BKP_WITHHOLDING,dv.YTD_BKP_WITHHOLDING,dv.BRANCH_ID,
B.BRANCH_NAME,decode(p.FIRST_NAME,null,o.business_name,p.first_name||' '||p.middle_name||' '||p.last_name) first_name,
d.ACCOUNT_NO,parv.RESPONSIBILITY_TYPE,dv.LAST_REMITTED_AMT,d.ACCOUNT_TYPE_ID,dv.account_id,i.institution_id,
i.institution_name,pid.party_registerd_id,bh.TAX_YEAR,bh.NOTIFICATION_DATE,bh.NOTICE_PRINT_DATE,dv.UNREMITTED_BKP_WTHOLD_AMT,
bh.STATUS,bh.BKP_WITHHOLDING_ENTRY_DATE,bh.USER_NAME


from deposit_account dv,
DEPOSIT_ACCOUNT_VW d,
party_account_role_vw parv,
PARTY_INSTITUTION_ASSOCIATION pia,
BACKUP_WITHHOLDING bh,

BRANCH B,(select * from party_registered_ids pid where type in ('SSN','TIN')) pid,
person p,organization o,institution i

where dv.account_id=parv.ACCOUNT_ID and d.INSTITUTION_ID = i.INSTITUTION_ID and parv.PARTY_ID = pia.party_id

and bh.customer_id = pia.UNIQUE_ASSOCIATION_ID
and dv.BRANCH_ID=B.UNIQUE_ID
and d.ACCOUNT_ID=dv.ACCOUNT_ID and parv.party_id=pid.party_id and p.party_id(+)=parv.party_id and o.party_id(+)=parv.party_id
and parv.RESPONSIBILITY_TYPE in ('9','6')
and d.ACCOUNT_CATEGORY in ('1')
and d.STATUS_CODE in ('0','1','2','3')
and nvl(d.Interest_code,'3') not in ('0','1') 
and TRUNC(bh.BKP_WITHHOLDING_ENTRY_DATE) = TRUNC(i.LAST_PROCESSED_DATE) 

 
order by to_number(pid.party_registerd_id) desc,to_number(d.ACCOUNT_NO) desc, dv.BRANCH_ID asc,dv.UNREMITTED_BKP_WTHOLD_AMT asc;

ALTER TABLE DEPOSIT ADD PREVIOUS_DAY_OD NUMBER default 0;
UPDATE DEPOSIT SET PREVIOUS_DAY_OD=NO_DAYS_OVERDRAWN_CURR_PERIOD;
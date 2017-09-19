CREATE OR REPLACE FORCE VIEW "HOLD_PAYMENT_VIEW" ("INSTRUCTION_ID", "ACCOUNT_ID", "CREATED_DATE", "EFFECTIVE_EXPIRE_DATE", "HOLD_AMOUNT", "ACCOUNT_NO") AS
 (select dai.instruction_id, dai.account_id, dai.created_date, dai.effective_expire_date, hp.hold_amount, d.account_no
from deposit_account_instruction dai, hold_payment hp, deposit d
where dai.instruction_id = hp.instruction_id
and dai.account_id = d.account_id
and hp.hold_status = 1
);

--EIP Scripts

CREATE OR REPLACE FORCE VIEW "HOLD_PAYMENT_VIEW"
("INSTRUCTION_ID", "ACCOUNT_ID", "CREATED_DATE", "EFFECTIVE_EXPIRE_DATE", "HOLD_AMOUNT", "ACCOUNT_NO") AS
(select dai.instruction_id, dai.account_id, dai.created_date, dai.effective_expire_date, hp.hold_amount, d.account_no
from deposit_account_instruction dai, hold_payment hp, deposit d
where dai.instruction_id = hp.instruction_id
and dai.account_id = d.account_id
and hp.hold_status = 1
);


CREATE or replace VIEW TPT_TXN_REVIEW_VW AS
(SELECT tpt.TRANSACTION_ID,tpt.AMOUNT,tpt.TRANS_CODE,tpt.INSTITUTION_ID,tpt.ACCOUNT_NUMBER,tpt.ACCOUNT_ID,tpt.ACCOUNT_TYPE_ID,
tpt.DESCRIPTION,tpt.EFFECTIVE_DATE,tpt.ENTRY_DATE,tpt.POST_STATUS,tpt.REASON_ID,tpt.REASON_DESCRIPTION,tpt.REASON_DETAIL,
tpt.CHEQUE,tpt.EVENT_ID,tpt.FILE_NAME,tpt.PAYMENT_ID,tpt.POST_DATE,tpt.SOURCE_NAME,tpt.TRACE,tpt.BATCH_NUMBER,tpt.SERIAL_NUMBER,
tpt.COMPANY_NAME,tpt.COMPANY_DESCRIPTION,tpt.COMPANY_CUST_NUMBER,tpt.COMPANY_ID,tpt.ENTRY_TYPE_ID,tpt.ACH_TRAN_CODE,
tpt.ACH_STANDARD_ENTRY_CLASS_CODE,tpt.ACH_FRABA_ID,tpt.ACH_PROCESSING_DATE,tpt.ACH_DFI_ACCOUNT_NUMBER,tpt.REQUIRED_PARAMS,
tpt.ACH_CHECK_SERIAL_NUMBER,tpt.TRANS_ACCOUNT_NO,tpt.TRANS_INSTITUTION_ID,tpt.TRANS_ACCOUNT_ID,tpt.STOP_PAYMENT_INST_ID,
tpt.OPERATOR_ID,tpt.ORIGIN_INSTITUTION_ID,tpt.REVERSAL_DATE,tpt.TERMINAL_IDENTIFICATION_CODE,tpt.TERMINAL_LOCATION,
tpt.TERMINAL_CITY,tpt.TERMINAL_STATE,tpt.ROUTING_TRANSIT_NUMBER,tpt.TXN_REVIEW,tpt.STATE,tpt.DECISION_TYPE,tpt.WAIVE_FEE,
tpt.WAIVE_NOTICES,tpt.REMARKS,d.overdraft_limit,d.ledger_balance,d.AVAILABLE_BALANCE,e.debit_or_credit,br.branch_id ,
br.branch_name 
FROM transaction_posttoday tpt,deposit d,deposit_account da,entry_type e,branch br 
WHERE tpt.account_number = d.ACCOUNT_no AND d.account_id=da.account_id and da.ASSIGNED_BRANCH = br.unique_id(+) AND
tpt.entry_type_id=e.unique_id AND tpt.txn_review = 'yes');
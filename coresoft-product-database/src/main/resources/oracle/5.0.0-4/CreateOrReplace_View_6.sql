CREATE OR REPLACE FORCE VIEW "TPT_TXN_REVIEW_VW" ("TRANSACTION_ID", "AMOUNT", "TRANS_CODE", "INSTITUTION_ID", "REGION_ID", "ACCOUNT_NUMBER", "ACCOUNT_ID", "ACCOUNT_TYPE_ID", "DESCRIPTION", "EFFECTIVE_DATE", "ENTRY_DATE", "POST_STATUS", "REASON_ID", "REASON_DESCRIPTION", "REASON_DETAIL", "CHEQUE", "EVENT_ID", "FILE_NAME", "PAYMENT_ID", "POST_DATE", "SOURCE_NAME", "TRACE", "BATCH_NUMBER", "SERIAL_NUMBER", "COMPANY_NAME", "COMPANY_DESCRIPTION", "COMPANY_CUST_NUMBER", "COMPANY_ID", "ENTRY_TYPE_ID", "ACH_TRAN_CODE", "ACH_STANDARD_ENTRY_CLASS_CODE", "ACH_FRABA_ID", "ACH_PROCESSING_DATE", "ACH_DFI_ACCOUNT_NUMBER", "REQUIRED_PARAMS", "ACH_CHECK_SERIAL_NUMBER", "TRANS_ACCOUNT_NO", "TRANS_INSTITUTION_ID", "TRANS_ACCOUNT_ID", "STOP_PAYMENT_INST_ID", "OPERATOR_ID", "ORIGIN_INSTITUTION_ID", "REVERSAL_DATE", "TERMINAL_IDENTIFICATION_CODE", "TERMINAL_LOCATION", "TERMINAL_CITY", "TERMINAL_STATE", "ROUTING_TRANSIT_NUMBER", "TXN_REVIEW", "STATE", "DECISION_TYPE", "WAIVE_FEE", "WAIVE_NOTICES", "REMARKS", "FORCE_POST_TRANSACTION", "OVERDRAFT_LIMIT", "LEDGER_BALANCE", "AVAILABLE_BALANCE", "DEBIT_OR_CREDIT", "BRANCH_ID", "BRANCH_NAME", "IS_PAYROLL_ACCOUNT") AS 
  (SELECT tpt.TRANSACTION_ID,
    tpt.AMOUNT,
    tpt.TRANS_CODE,
    tpt.INSTITUTION_ID,
    tpt.REGION_ID,
    tpt.ACCOUNT_NUMBER,
    tpt.ACCOUNT_ID,
    tpt.ACCOUNT_TYPE_ID,
    tpt.DESCRIPTION,
    tpt.EFFECTIVE_DATE,
    tpt.ENTRY_DATE,
    tpt.POST_STATUS,
    tpt.REASON_ID,
    CASE
      WHEN tpt.REASON_DESCRIPTION='NSF DUE TO WITHDRAWAL'
      AND tpt.account_type_id!   =10
      THEN 'NON EIP ITEM'
      ELSE tpt.REASON_DESCRIPTION
    END REASON_DESCRIPTION,
    tpt.REASON_DETAIL,
    tpt.CHEQUE,
    tpt.EVENT_ID,
    tpt.FILE_NAME,
    tpt.PAYMENT_ID,
    tpt.POST_DATE,
    tpt.SOURCE_NAME,
    tpt.TRACE,
    tpt.BATCH_NUMBER,
    tpt.SERIAL_NUMBER,
    tpt.COMPANY_NAME,
    tpt.COMPANY_DESCRIPTION,
    tpt.COMPANY_CUST_NUMBER,
    tpt.COMPANY_ID,
    tpt.ENTRY_TYPE_ID,
    tpt.ACH_TRAN_CODE,
    tpt.ACH_STANDARD_ENTRY_CLASS_CODE,
    tpt.ACH_FRABA_ID,
    tpt.ACH_PROCESSING_DATE,
    tpt.ACH_DFI_ACCOUNT_NUMBER,
    tpt.REQUIRED_PARAMS,
    tpt.ACH_CHECK_SERIAL_NUMBER,
    tpt.TRANS_ACCOUNT_NO,
    tpt.TRANS_INSTITUTION_ID,
    tpt.TRANS_ACCOUNT_ID,
    tpt.STOP_PAYMENT_INST_ID,
    tpt.OPERATOR_ID,
    tpt.ORIGIN_INSTITUTION_ID,
    tpt.REVERSAL_DATE,
    tpt.TERMINAL_IDENTIFICATION_CODE,
    tpt.TERMINAL_LOCATION,
    tpt.TERMINAL_CITY,
    tpt.TERMINAL_STATE,
    tpt.ROUTING_TRANSIT_NUMBER,
    tpt.TXN_REVIEW,
    tpt.STATE,
    tpt.DECISION_TYPE,
    tpt.WAIVE_FEE,
    tpt.WAIVE_NOTICES,
    tpt.REMARKS,
     tpt.force_post_transaction,
    d.overdraft_limit,
    d.ledger_balance,
    d.AVAILABLE_BALANCE,
    e.debit_or_credit,
    --'0' debit_or_credit,
    br.branch_id ,
    br.branch_name ,
   --004 branch_id,
   --'Denton South' branch_name,
    d.IS_PAYROLL_ACCOUNT
  FROM transaction_posttoday tpt,
    deposit d,
    deposit_account da,
    entry_type e,
    branch br
  WHERE tpt.account_number = d.ACCOUNT_NO
  AND d.account_id         =da.account_id
   AND da.ASSIGNED_BRANCH   = br.unique_id(+)
  AND tpt.entry_type_id    =e.unique_id
  AND tpt.txn_review       = 'yes'
  );


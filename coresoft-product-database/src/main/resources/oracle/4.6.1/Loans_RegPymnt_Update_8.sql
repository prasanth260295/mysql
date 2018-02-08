UPDATE loan_entry_posting_rule SET AFFECTS_OTHER_FEE_DUE=1  WHERE posting_rule_id=8882;
UPDATE loan_entry_posting_rule SET AFFECTS_ESCROW_BALANCE=1  WHERE posting_rule_id=8823;
UPDATE loan_entry_posting_rule SET AFFECTS_ESCROW_BALANCE=1  WHERE posting_rule_id=8882;

alter table ESCROW_ANALYSIS_ACCT_HISTORY add ESCROW_DETIAL_ID NUMBER(20);
alter table LOAN add ESCROW_SUMRY_ESC_BAL NUMBER(30,5) default 0;
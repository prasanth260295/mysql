ALTER TABLE FILE_LOG MODIFY REJECT_REASON VARCHAR2(50);

ALTER TABLE DEPOSIT ADD MTD_AVERAGE_BALANCE NUMBER(20,5);

ALTER TABLE DEPOSIT_ACCOUNT_SUMMARY ADD PREVIOUS_INTEREST NUMBER(15,5);
ALTER TABLE DEPOSIT_ACCOUNT_SUMMARY ADD IS_RATE_CHANGED NUMBER;

ALTER TABLE REQUEST_MASTER ADD  CREATE_ALERT NUMBER(1) DEFAULT 0;

ALTER TABLE DEPOSIT_ACCOUNT_SUMMARY MODIFY IS_RATE_CHANGED DEFAULT 0;

ALTER TABLE MEMO_POST_TRANSACTION_TELLER  MODIFY TRANS_CODE VARCHAR2(20);
ALTER TABLE MEMO_POST_TRANSACTION_TELLER  MODIFY SOURCE_TRANS_CODE VARCHAR2(20);
 
ALTER TABLE PARTY_ASSOC_MAINT_LOG ADD REQUEST_MADE VARCHAR2(45);
ALTER TABLE PARTY_ASSOC_MAINT_LOG ADD FIRST_NAME VARCHAR2(50);
ALTER TABLE PARTY_ASSOC_MAINT_LOG ADD LAST_NAME VARCHAR2(50);

alter table avg_bal_mtd_history add ROLLING_TWELVE_MONTHS NUMBER(20,5);
ALTER TABLE avg_bal_mtd_history MODIFY ROLLING_TWELVE_MONTHS DEFAULT 0;

alter table TRANSACTION_POSTTODAY add IS_TRANSACTION_REVERSED NUMBER(1);

alter table Deposit add BACKDATED_TRANSACTION DATE;
 
alter table ACCOUNT_HISTORY_ITEM modify TRANS_CODE VARCHAR2(10);
alter table ACCOUNT_HISTORY_ITEM modify SOURCE_TRANS_CODE VARCHAR2(10);

alter table transaction_posttoday modify TRANS_CODE VARCHAR2(10);
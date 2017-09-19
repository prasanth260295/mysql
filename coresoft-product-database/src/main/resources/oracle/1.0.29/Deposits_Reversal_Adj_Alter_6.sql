alter table transaction_posttoday add(REVERSAL_REF_ID NUMBER(20));
alter table transaction_posttoday add(PRINT_IN_STATEMENT NUMBER(1));
alter table account_history_item add(ORIGINAL_TXN_ID NUMBER(20));
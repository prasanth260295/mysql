ALTER table STATEMENT_CODES_MASTER ADD CONTRA_CODE_ID VARCHAR2(30);

alter table transaction_details modify TRANSACTION_REJECT_REASON VARCHAR2(30);

alter table transaction_batch_details modify BATCH_REJECT_REASON VARCHAR2(30);

alter table file_log modify REJECT_REASON VARCHAR2(30);
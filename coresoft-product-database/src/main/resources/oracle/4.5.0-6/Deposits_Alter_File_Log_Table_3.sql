ALTER TABLE FILE_LOG MODIFY  FILE_TAIL  VARCHAR2(200);
ALTER TABLE FILE_LOG MODIFY  FILE_HEAD  VARCHAR2(200);

ALTER TABLE BATCH_DETAILS MODIFY BATCH_HEADER VARCHAR2(200);
ALTER TABLE BATCH_DETAILS MODIFY BATCH_TAIL VARCHAR2(200);

ALTER TABLE TRANSACTION_WAREHOUSE MODIFY TRANSACTION_RECORD VARCHAR2(200);
ALTER TABLE TRANSACTION_WAREHOUSE MODIFY TRANSACTION_ADDENDUM VARCHAR2(200);
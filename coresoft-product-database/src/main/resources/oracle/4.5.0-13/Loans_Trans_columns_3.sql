ALTER TABLE LOAN_ACCOUNT_EVENT ADD PRIMARY_RTN VARCHAR2(30);
ALTER TABLE LOAN_ACCOUNT_EVENT ADD TRANSFER_TYPE VARCHAR2(30);
ALTER TABLE LOAN_ACCOUNT_EVENT ADD ORIGINATION_ID VARCHAR2(30);
ALTER TABLE LOAN_ACCOUNT_EVENT ADD DEPOSIT_ACCOUNT_NUMBER VARCHAR2(30);
ALTER TABLE LOAN_ACCOUNT_EVENT ADD REQUESTOR_NAME VARCHAR2(100);
ALTER TABLE LOAN_ACCOUNT_EVENT ADD POSTED__DATE_TIMESTAMP TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE LOAN_ACCOUNT_EVENT ADD REMARKS VARCHAR2(200);
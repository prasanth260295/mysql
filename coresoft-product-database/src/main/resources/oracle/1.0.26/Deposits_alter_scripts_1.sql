ALTER TABLE DEPOSIT_ACCOUNT ADD(DEPOSIT_ID VARCHAR2(30));
UPDATE DEPOSIT_ACCOUNT SET DEPOSIT_ID=ACCOUNT_ID;
ALTER TABLE DEPOSIT_ACCOUNT MODIFY(DEPOSIT_ID VARCHAR2(30) NOT NULL);
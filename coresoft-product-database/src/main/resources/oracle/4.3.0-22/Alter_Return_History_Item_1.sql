ALTER TABLE RETURN_HISTORY_ITEM ADD EFFECTIVE_DATE DATE;
ALTER TABLE RETURN_HISTORY_ITEM ADD EIP_DATE DATE;
ALTER TABLE RETURN_HISTORY_ITEM ADD ACCOUNT_NO VARCHAR2(30);

ALTER TABLE deposit MODIFY INTEREST_CALCULATION VARCHAR2(30);
--ALTER TABLE safe_deposit_contract ADD PERSONAL_BANKER VARCHAR2(50 BYTE);
--ALTER TABLE safe_deposit_contract ADD ASSIGNED_OFFICER VARCHAR2(50 BYTE);
--ALTER TABLE SAFE_DEPOSIT_CONTRACT_AUD ADD PERSONAL_BANKER VARCHAR2(50 BYTE);
--ALTER TABLE SAFE_DEPOSIT_CONTRACT_AUD ADD ASSIGNED_OFFICER VARCHAR2(50 BYTE);

ALTER TABLE telecom_address ADD PRIMARY_CONTACT NUMBER(2) DEFAULT 0;
ALTER TABLE telecom_address ADD PRIMARY_CONTACT_CELL NUMBER(2) DEFAULT 0;
ALTER TABLE telecom_address ADD PRIMARY_CONTACT_WORK NUMBER(2) DEFAULT 0;
----------------CustomerODLoanAccount----------------
CREATE TABLE CUSTOMER_OD_LOAN_ACCOUNT
(
ID NUMBER(20) NOT NULL,
CUSTOMER_ID  VARCHAR2(20),
MASTER_AGREEMENT_NUMBER VARCHAR2(20),
OD_ACCOUNT_NUMBER  VARCHAR2(20),
SETTLEMENT_LOAN_ACCOUNT VARCHAR2(20),
RT_NUMBER VARCHAR2(20),
TRANSFERRED_AMOUNT NUMBER(20,5),
OD_FEES NUMBER(20,5),
PRIMARY KEY (ID)
);

CREATE SEQUENCE CUST_OD_LOAN_ACCNT_ID_SEQ INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;
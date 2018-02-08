CREATE TABLE LOAN_RENEWAL_AUTO_REQUEST
(
ID NUMBER(10) NOT NULL,
ACCOUNT_NUMBER VARCHAR2(30),
EFFECTIVE_DATE DATE,
RENEWAL_TERM VARCHAR2(20),
RENEWAL_PRINCIPAL NUMBER(20,5),
RENEWAL_FEES NUMBER(20,5),
STATUS NUMBER(5),
COMMENTS VARCHAR2(20),
CREATION_DATE DATE DEFAULT SYSDATE,
PRIMARY KEY (ID)
); 

CREATE SEQUENCE LOAN_REN_REQUEST_ID_SEQ INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;
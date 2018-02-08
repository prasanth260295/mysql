CREATE TABLE "REMITTANCE_DISB_HISTORY" (

 	"ID"                                       NUMBER(10) PRIMARY KEY,
 	"REMITTANCE_DATE"				           DATE,
 	"INVESTOR_CODE"         		           VARCHAR2(30),
 	"INVESTOR_NAME"					           VARCHAR2(50),
    "GROSS_LOAN_ACCOUNT_NUMBER"                VARCHAR2(20),
    "SOLD_LOAN_ACCOUNT_NUMBER"                 VARCHAR2(20),
    "CUSTOMER_NAME"                            VARCHAR2(70), 
    "PRINCIPAL_AMOUNT"		                   NUMBER(20,2),
    "INTEREST_AMOUNT"		                   NUMBER(20,2),
    "YIELD_AMOUNT"		                       NUMBER(20,2),
    "TOTAL_AMOUNT"		                       NUMBER(20,2),
    "DATE_CREATED"                             DATE,
    "CREATED_BY"                               VARCHAR2(20));
    
CREATE SEQUENCE "REMITTANCE_DISB_HIST_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;
CREATE TABLE "PSEUDO_ESCROW_ANALYSIS_HISTORY" (

 	"ID"                           NUMBER(10) PRIMARY KEY,
    "ACCOUNT_NUMBER"               VARCHAR2(30),
    "CUSTOMER_NAME"                VARCHAR2(200), 
    "PRINCIPAL_BALANCE"            NUMBER(20,5),
    "SCHEDULE_PAYMENT_DATE"        DATE,
    "SCHEDULE_PAYMENT_AMT"         NUMBER(20,5),
    "CURRENT_ESCROW_BAL"       	   NUMBER(20,5),
    "SURPLUS_AMOUNT"   		       NUMBER(20,5),
    "SHORTAGE_AMOUNT"              NUMBER(20,5),
    "CURRENT_ESCROW_CONSTANT"      NUMBER(20),
   	"NEW_ESCROW_CONSTANT"		   NUMBER(20),
    "ANALYSIS_STATUS"              NUMBER(20),
    "CHECK_PRINTED_STATUS"		   NUMBER(20) DEFAULT 0,
    "DEFICIT_NOTICE_STATUS"		   NUMBER(20) DEFAULT 0,
    "ANALYSIS_DATE"					DATE,
    "CREATED_DATE"                 DATE,
    "CREATED_BY"                  VARCHAR2(40),
    "ESCROW_DETIAL_ID"             NUMBER(20));
  	
CREATE SEQUENCE "PSEUDO_ESCROW_HIST_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;
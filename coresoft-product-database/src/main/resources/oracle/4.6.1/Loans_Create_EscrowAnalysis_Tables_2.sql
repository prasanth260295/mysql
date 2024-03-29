CREATE TABLE "ESCROW_ANALYSIS_ACCT_HISTORY" (

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
    "CREATED_BY"                  VARCHAR2(40));
  	
CREATE SEQUENCE "ESCROW_ANALYSIS_ACCT_HIST_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;



CREATE TABLE "ESCROW_ANALYSIS_GROUP_HISTORY" (

    "ID"                           NUMBER(10) PRIMARY KEY,
    "ESCROW_ANALYSIS_DATE"         DATE,
    "ANALYSIS_STATUS"              NUMBER(10), 
    "TOTAL_ACCOUNTS"               NUMBER(10),
    "DEFICIT_ACCOUNTS"             NUMBER(10),
    "SURPLUS_ACCOUNTS"             NUMBER(10),
    "REFUND_CHECKS_PRINTED"        NUMBER(10),
    "PAYMENT_ADJUST_ACCOUNTS"      NUMBER(10),
    "CREATED_DATE"                 DATE,
    "CREATED_BY"                  VARCHAR2(30));
  	
CREATE SEQUENCE "ESCROW_ANALYSIS_GROUP_HIST_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;


CREATE TABLE "ESCROW_PMNT_MONT_PROJECTION" (

    "ID"                      NUMBER(10) PRIMARY KEY,
    "ACCOUNT_NUMBER"          VARCHAR2(20), 
    "ESCROW_PROJECTION_ID"    NUMBER(10) NOT NULL,
    "MONTH_VALUE"			  VARCHAR2(20),
    "ESCROW_PYMNT_AMT"        NUMBER(10),
    "ESCROW_DISB_AMT"         NUMBER(10),
    "ESCROW_STATRTING_BAL"    NUMBER(10),
    "ESCROW_CLOSING_BAL"      NUMBER(10),
    "CREATED_DATE"            DATE,
    CONSTRAINT FK_HISTO FOREIGN KEY(ESCROW_PROJECTION_ID) REFERENCES escrow_analysis_acct_history(ID));
    
 CREATE SEQUENCE "ESCROW_PMNT_MONT_PROJECT_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;
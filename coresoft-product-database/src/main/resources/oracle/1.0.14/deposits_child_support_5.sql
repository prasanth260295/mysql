create table CHILD_SUPPORT( ID NUMBER(15,0) PRIMARY KEY,
SSN_NUM Varchar2(9) not null ,
LAST_NAME VARCHAR2(20),
FIRST_NAME VARCHAR2(16),
STATE_PASSBACK_INFORMN varchar2(10),
CASE_PASSBACK_INFORMATION varchar2(15),
FIPSCODE_PASSBACK_INFORMN varchar2(5),
ADDT_ST_PASSBACK_INFORMN varchar2(23),
FILE_DATE date,
SSN_STATUS NUMBER(1) default 0,
MATCH_STATUS NUMBER(1) default 0
);

CREATE SEQUENCE CHILD_SUPPORT_UID_SEQ
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE
    NOMINVALUE
    NOCYCLE
    CACHE 20
    NOORDER;
    
CREATE TABLE CHILD_SUPPORT_EXTRACT ( 
	ACCOUNT_NO               	VARCHAR2(30) NULL,
	MATCHED_FLAG             	NUMBER NULL,
	PAYEE_INDICATOR          	NUMBER NULL,
	PRIMARY_CUSTOMER_NAME    	VARCHAR2(40) NULL,
	SECONDARY_NAME           	VARCHAR2(40) NULL,
	PRIMARY_SSN              	VARCHAR2(30) NULL,
	SECONDARY_SSN            	VARCHAR2(30) NULL,
	PRIMARY_DOB              	DATE NULL,
	LINE_1                   	VARCHAR2(40) NULL,
	LINE_2                   	VARCHAR2(40) NULL,
	CITY                     	VARCHAR2(29) NULL,
	STATE                    	VARCHAR2(2) NULL,
	ZIP_1                    	VARCHAR2(30) NULL,
	LEDGER_BALANCE           	NUMBER(20,5) NULL,
	LAST_NAME                	VARCHAR2(4) NULL,
	ADDT_ST_PASSBACK_INFORMN 	VARCHAR2(23) NULL,
	STATE_PASSBACK_INFORMN   	VARCHAR2(10) NULL,
	CASE_PASSBACK_INFORMATION	VARCHAR2(15) NULL,
	SSN_NUM                  	VARCHAR2(9) NULL,
	ACCOUNT_TYPE_ID          	VARCHAR2(30) NOT NULL,
	PRODUCT_TYPE_ID          	VARCHAR2(30) NOT NULL,
	PLAN_ID                  	VARCHAR2(30) NULL,
	FILE_DATE                	DATE NULL,
	ID                       	NUMBER NULL 
	);

CREATE SEQUENCE CHILD_SUPPORT_SEQ  START WITH  1 INCREMENT BY 1 ;

------------------------------------------------------CREATE TABLE SCRIPT----------------------------------------------------------------------------

CREATE TABLE CHILD_SUPPORT_ACCT_TYPE_LOOKUP 
   (	ACCOUNT_TYPE NUMBER(15,0), 
	PRODUCT_TYPE NUMBER(10,0), 
	PRODUCT_TYPE_DESC VARCHAR2(100 BYTE), 
	ASSIGNED_ACCOUNT_TYPE VARCHAR2(100 BYTE)
   );

ALTER TABLE CHILD_SUPPORT ADD FILE_NAME VARCHAR2(50);

create table MEMO_POST_TRANSACTION_TELLER as select * from account_history_item where 1=2;

create table MEMO_POST_TRANS_TELLER_ARC as SELECT * FROM  MEMO_POST_TRANSACTION_TELLER;

alter table DEPOSIT_ACCOUNT add PREV_KITING_DATE DATE;

alter table ACCOUNT_CHECK_PAYMENT add(PAYEE_INSTITUTION_ID number(3,0));

alter table account_history_item add routing_transit_number varchar2(9); 



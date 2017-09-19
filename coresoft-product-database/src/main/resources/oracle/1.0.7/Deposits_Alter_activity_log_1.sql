ALTER TABLE ACTIVITY_LOG MODIFY TERMINAL VARCHAR2(500 BYTE);
 
ALTER TABLE ACTIVITY_LOG MODIFY ACTIVITY_PERFORMED varchar2(500);

drop table DEPOSITS_LOANS;
CREATE TABLE DEPOSITS_LOANS ( 
    ACCOUNT_NO    	varchar2(30) NULL,
    INSTITUTION_ID	varchar2(30) NULL,
    PARTY_ID      	varchar2(30) NULL,
    PARTY_NAME    	varchar2(400) NULL,
    PARTY_TYPE    	varchar2(30) NULL,
    SSN           	varchar2(30) NULL,
    TIN           	varchar2(30) NULL,
    LINE_1        	varchar2(100) NULL,
    LINE_2        	varchar2(100) NULL,
    LINE_3        	varchar2(50) NULL,
    CITY          	varchar2(50) NULL,
    STATE         	varchar2(50) NULL,
    COUNTRY       	varchar2(50) NULL,
    ZIP_1         	varchar2(30) NULL,
    AMOUNT        	NUMBER(20,5) NULL,
    OLD_ACCOUNT_NO	VARCHAR2(25) NULL 
    );

CREATE SEQUENCE "STMT_MSG_ID_SEQ" INCREMENT BY 1
        START WITH 100 MAXVALUE 99999 NOMINVALUE CYCLE NOORDER;

CREATE TABLE STATEMENT_MESSAGE (STMT_MSG_ID NUMERIC(5) NOT NULL);
        
ALTER TABLE STATEMENT_MESSAGE ADD STMT_MSG_DESC varchar2(2000) NOT NULL;

ALTER TABLE STATEMENT_MESSAGE ADD STMT_MSG_TYPE varchar2(50) NOT NULL;

CREATE TABLE INST_STMT_MSG ( STMT_MSG_ID NUMERIC(10) NOT NULL,INST_ID varchar2(15) NOT NULL);

alter table transaction_posttoday add ACH_CHECK_SERIAL_NUMBER varchar2(15);

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD ( IS_VARIABLE_AMOUNT NUMBER(3,0) DEFAULT 0 ) ;

UPDATE	AUTOMATIC_TRANSFER_INSTRUCTION SET IS_VARIABLE_AMOUNT=1 WHERE	
SOURCE_ACCOUNT IN (	SELECT ACCOUNT_ID FROM DEPOSIT_ACCOUNT)	AND
TARGET_ACCOUNT IN (	SELECT ACCOUNT_ID FROM DEPOSIT_ACCOUNT);

CREATE OR REPLACE VIEW AUTOMATIC_TRANSFER_VW AS
SELECT
	AUTO_TRANS_UNIQUE_ID,
    SOURCE_ACCOUNT,
    SOURCE.ACCOUNT_NO SOURCE_ACC_NO,
    SOURCE.INSTITUTION_ID SOURCE_INST_NO,
    SOURCE.ACCOUNT_TYPE_ID SOURCE_ACC_TYPE_ID,
    TARGET_ACCOUNT,
    TARGET.ACCOUNT_NO TARGET_ACC_NO,
    TARGET.INSTITUTION_ID TARGET_INST_NO,
    TARGET.ACCOUNT_TYPE_ID TARGET_ACC_TYPE_ID,
	TRANSFER_MONEY,
	substr(TRANSFER_FREQUENCY,0,instr(TRANSFER_FREQUENCY,'#')-1) 
	TRANSFER_FREQUENCY,
	NUMBER_OF_TRANSFERS,
	START_DATE,
	END_DATE,
	AUTOMATIC_TRANSFER,
	IS_VARIABLE_AMOUNT 
FROM
	AUTOMATIC_TRANSFER_INSTRUCTION AT,ACCOUNT SOURCE,ACCOUNT TARGET 
where AT.SOURCE_ACCOUNT=SOURCE.ACCOUNT_ID and AT.TARGET_ACCOUNT=TARGET.ACCOUNT_ID;

create sequence  BRANCH_ADDRESS_ID_SEQ start with 10000 increment by 1; 

CREATE TABLE TELECOM_ADD_FOR_STMT AS SELECT * FROM TELECOM_ADDRESS  WHERE   1=2 ;

ALTER TABLE TELECOM_ADD_FOR_STMT   ADD  BRANCH_ID varchar2(20);

CREATE TABLE  GEOGRAPHIC_ADD_TMP_FOR_STMT   AS SELECT *   FROM   GEOGRAPHIC_ADDRESS  WHERE  1=2 ;

ALTER TABLE GEOGRAPHIC_ADD_TMP_FOR_STMT  ADD INSTITUTION_ID NUMBER(2); 

ALTER TABLE TRANSACTION_POSTTODAY ADD ( TRANS_ACCOUNT_NO varchar2(30) NULL, 
	TRANS_INSTITUTION_ID varchar2(30) NULL,	TRANS_ACCOUNT_ID varchar2(30) NULL ) ;
	
ALTER TABLE ENTRY_TYPE ADD ( POSTING_SEQUENCE NUMBER(10) NULL ) ;	

ALTER TABLE PRODUCT_TYPE  ADD PRODUCT_TITLE_FOR_STMT varchar2(100);
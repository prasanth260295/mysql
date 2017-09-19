-- renaming the column DATE_LAST_KITING_CURR_PERIOD to DATE_LAST_KITING

ALTER TABLE DEPOSIT_ACCOUNT rename column DATE_LAST_KITING_CURR_PERIOD to DATE_LAST_KITING;

CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;
 
-- auto transfer 

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD ( INSTRUCTION_STATUS VARCHAR2(2) ,
COMMENTS VARCHAR2(25) ,
ALLOW_ACCOUNT_TO_OVERDRAFT NUMBER ,
INSTRUCTION_DATE DATE  , 
ENTERED_BY VARCHAR2(25) );

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD ( CLOSED_DATE DATE NULL );

CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, 
A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,A.LAST_PROCESSED_DATE,
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;

-- cycle group scripts

-- structure of cycle group
CREATE TABLE CYCLE_GROUP_CONFIG(
CYCLE_GROUP_CONFIG_UID NUMBER(15),
CUSTOMER_ID VARCHAR2(30),
INSTITUTION_ID VARCHAR2(30),
CYCLED_DATE DATE,
IS_COMBINED NUMBER(1),
CYCLE_CODE VARCHAR2(30),
ASG_UNIQUE_ID NUMBER(15),
main_account_id VARCHAR2(30)
);

CREATE TABLE CYCLE_GROUP_ACCTS_CONFIG(
CYCLE_GROUP_CONFIG_UID NUMBER(15),
ACCOUNT_ID VARCHAR2(30),
IS_ENABLED NUMBER(1),
IS_CYCLING_ENABLED NUMBER(1)
);


-- creating sequence for cycle group

CREATE SEQUENCE  CYCLE_GRP_CONFG_UID_SEQ  MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 1 CACHE 20 ORDER  NOCYCLE;

ALTER TABLE CYCLE_GROUP_CONFIG ADD CONSTRAINT CYC_GR_CFG_PK PRIMARY KEY (CYCLE_GROUP_CONFIG_UID);
ALTER TABLE CYCLE_GROUP_CONFIG ADD CONSTRAINT CYC_GR_CFG_ASG_UID_FK FOREIGN KEY (ASG_UNIQUE_ID) REFERENCES ACCOUNT_STATEMENT_GENERATOR (UNIQUE_ID) ON DELETE SET NULL;
ALTER TABLE CYCLE_GROUP_CONFIG ADD CONSTRAINT CYC_GR_CFG_MAID_FK FOREIGN KEY (main_account_id) REFERENCES ACCOUNT (account_id) ON DELETE SET NULL;

ALTER TABLE CYCLE_GROUP_ACCTS_CONFIG ADD CONSTRAINT CYC_GR_ACCT_CFG_IID_FK FOREIGN KEY(CYCLE_GROUP_CONFIG_UID) REFERENCES CYCLE_GROUP_CONFIG (CYCLE_GROUP_CONFIG_UID);
ALTER TABLE CYCLE_GROUP_ACCTS_CONFIG ADD CONSTRAINT CYC_GR_ACCT_CFG_AID_FK FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT (ACCOUNT_ID);
ALTER TABLE CYCLE_GROUP_ACCTS_CONFIG ADD CONSTRAINT CYC_GR_ACCT_AID_UK UNIQUE(ACCOUNT_ID);

-- index creation
CREATE INDEX CYCLE_GROUP_CFG_ISCOMB_IDX ON CYCLE_GROUP_CONFIG(IS_COMBINED);
CREATE INDEX CYCLE_GROUP_CFG_CID_IID_IDX ON CYCLE_GROUP_CONFIG(CUSTOMER_ID,INSTITUTION_ID);
CREATE INDEX CYCLE_GRP_ACCT_CFG_CGCID_IDX ON CYCLE_GROUP_ACCTS_CONFIG(CYCLE_GROUP_CONFIG_UID);


CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,
A.DATE_OPENED ACCOUNT_DATE_OPENED,A.CREATION_DATE,A.PRODUCT_INSTANCE_UID,A.STATUS ACCOUNT_STATUS,A.CONTRACT_ID,A.LAST_PROCESSED_DATE,  
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;

ALTER TABLE INSTITUTION_TRANSCODE_LOOKUP ADD POSTING_SEQUENCE NUMBER(10);

create index int_cd_hist_uid on INTEREST_CODES(INTEREST_CODE_HIST_UID);

alter table DEPOSIT_ACCOUNT rename column NO_DEBIT_ENCL_CURRENT_PERIOD 
to NO_ENCLOSURE_CURRENT_PERIOD;

CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,
A.DATE_OPENED ACCOUNT_DATE_OPENED,A.CREATION_DATE,A.PRODUCT_INSTANCE_UID,A.STATUS ACCOUNT_STATUS,A.CONTRACT_ID,A.LAST_PROCESSED_DATE,  
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;

CREATE TABLE GL_OFFSET_RECORD 
	(
		UNIQUE_ID NUMBER(20,0) NOT NULL ,
		ACCOUNT_NUMBER VARCHAR2(30) NULL,
		INSTITUTION_ID VARCHAR2(30) NOT NULL,
		ACCOUNT_TYPE_ID VARCHAR2(25) NULL,
		CREATION_DATE DATE NOT NULL,
		EFFECTIVE_DATE DATE NOT NULL,
		ACCOUNT_CATEGORY NUMBER(5,0) NULL,
		PRODUCT_TYPE_ID VARCHAR2(30) NULL,
		BRANCH_ID VARCHAR2(30) NULL,
		TRANSACTION_AMOUNT NUMBER(30,5) NULL,
		SOURCE_TYPE NUMBER(5,0) NULL ,
		TRANS_CODE VARCHAR2(30) NULL
	);


CREATE SEQUENCE GL_OFFSET_UNIQUE_SEQ INCREMENT BY 1 START WITH 1;

alter table PERSON add (MOTHERS_MAIDEN_NAME VARCHAR2(100) NULL);
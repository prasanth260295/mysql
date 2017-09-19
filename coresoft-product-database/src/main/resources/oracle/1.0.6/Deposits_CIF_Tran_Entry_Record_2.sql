

CREATE TABLE TRANSACTION_POSTTODAY_CIF ( 
    TRANSACTION_ID               	NUMBER(20,0) ,
    AMOUNT                       	NUMBER(20,5) ,
    TRANS_CODE                   	NUMBER(10,0) ,
    INSTITUTION_ID               	varchar2(30) ,
    ACCOUNT_NUMBER               	varchar2(30) ,
    ACCOUNT_ID                   	varchar2(30) ,
    ACCOUNT_TYPE_ID              	varchar2(30) ,
    DESCRIPTION                  	varchar2(400) ,
    EFFECTIVE_DATE               	DATE ,
    ENTRY_DATE                   	DATE ,
    POST_STATUS                  	NUMBER(1,0) ,
    REASON_ID                    	varchar2(10) ,
    REASON_DESCRIPTION           	varchar2(300) ,
    REASON_DETAIL                	varchar2(300) ,
    CHEQUE                       	NUMBER(10,0) ,
    EVENT_ID                     	NUMBER(15,0) ,
    FILE_NAME                    	varchar2(200) ,
    PAYMENT_ID                   	NUMBER(15,0) ,
    POST_DATE                    	DATE ,
    SOURCE_NAME                  	varchar2(60) ,
    TRACE                        	varchar2(16) ,
    BATCH_NUMBER                 	varchar2(4) ,
    SERIAL_NUMBER                	NUMBER(8,0) ,
    COMPANY_NAME                 	varchar2(100) ,
    COMPANY_DESCRIPTION          	varchar2(200) ,
    COMPANY_CUST_NUMBER          	varchar2(30) ,
    COMPANY_ID                   	varchar2(30) ,
    ACH_TRAN_CODE                	varchar2(5) ,
    ACH_STANDARD_ENTRY_CLASS_CODE	varchar2(15) ,
    ACH_FRABA_ID                 	NUMBER(15,0) ,
    ACH_PROCESSING_DATE          	DATE ,
    ACH_DFI_ACCOUNT_NUMBER       	varchar2(20) ,
    REQUIRED_PARAMS              	varchar2(200) ,
    ENTRY_TYPE_ID                	NUMBER(10,0) 

);

ALTER TABLE TRANSACTION_POSTTODAY_CIF
    ADD ( CONSTRAINT TRANSACTION_POSTDAY_CIF_PK
    PRIMARY KEY(TRANSACTION_ID)
    );


ALTER TABLE TRANSACTION_POSTTODAY_CIF
    ADD ( CONSTRAINT TRANS_POSTDAY_CIF_ATID_FK
	FOREIGN KEY(ACCOUNT_TYPE_ID)
	REFERENCES ACCOUNT_TYPE_LOOKUP(ACCOUNT_TYPE_ID)
	);

ALTER TABLE TRANSACTION_POSTTODAY_CIF
    ADD ( CONSTRAINT TRANSACTION_POSTDAY_CIF_AID_FK
	FOREIGN KEY(ACCOUNT_ID)
	REFERENCES ACCOUNT(ACCOUNT_ID)
	);

CREATE INDEX TRAN_PT_DATES_IID_ANO_IDX
    ON TRANSACTION_POSTTODAY_CIF(EFFECTIVE_DATE, ENTRY_DATE, INSTITUTION_ID, ACCOUNT_NUMBER);
    
CREATE SEQUENCE TRANS_POSTTODAY_CIF_ID_SEQ
    INCREMENT BY 1
    START WITH 752242259
    NOMAXVALUE
    NOMINVALUE
    NOCYCLE
    CACHE 5000
    ORDER
;
    
create index trnsposttday_accID_idx on TRANSACTION_POSTTODAY(account_id) nologging;
create index trnsposttday_reasonID_idx on TRANSACTION_POSTTODAY(reason_id) nologging;

CREATE TABLE TELLER_CASH_LOOKUP
(UNIQUE_ID NUMBER(10),
 INSTITUTION_ID VARCHAR2(4),
 ACCOUNT_ID VARCHAR2(14),
 BRANCH_ID VARCHAR2(4),
 TARGET_ACCOUNT_ID VARCHAR2(14),
 PRIMARY KEY(INSTITUTION_ID, ACCOUNT_ID));

CREATE SEQUENCE TELLER_CASH_LOOKUP_SEQ
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE
    NOMINVALUE
    NOCYCLE
    CACHE 20
    ORDER
;
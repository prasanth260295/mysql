CREATE TABLE CARD_NUMBER_INFO ( 
	ID                   	NUMBER(15,0) NOT NULL,
	CARD_FILE_ID         	NUMBER(15,0) NOT NULL,
	ACCOUNT_NUMBER       	VARCHAR2(19) NULL,
	CARD_NUMBER          	VARCHAR2(19) NULL,
	BRANCH_ID            	VARCHAR2(4) NULL,
	EMBOSS_NAME          	VARCHAR2(26) NULL,
	CARD_STATUS_PROCESSED	NUMBER(1,0) NULL 
	);

CREATE TABLE CARD_UPDATE_FILE ( 
	ID       	NUMBER(15,0) NOT NULL,
	FILE_NAME	VARCHAR2(25) NOT NULL,
	STATUS   	VARCHAR2(15) NULL 
	);

CREATE TABLE CARD_UPDATE_NUMBER ( 
	ACCOUNT_NO	NVARCHAR2(30) NULL,
	CARD_NO   	NVARCHAR2(30) NULL,
	CARD_NAME 	NVARCHAR2(50) NULL 
	);

CREATE TABLE RECONCILE_TOTALS ( 
	ID               	NUMBER(15,0) NOT NULL,
	BUSINESS_DATE    	VARCHAR2(8) NOT NULL,
	MSG_TYPE         	VARCHAR2(8) NOT NULL,
	CREDITS          	NUMBER(10,0) NULL,
	TOT_AMT_CRED     	NUMBER(16,0) NULL,
	CRED_REVERSED    	NUMBER(10,0) NULL,
	TOT_AMT_CRED_REV 	NUMBER(16,0) NULL,
	DEBITS           	NUMBER(10,0) NULL,
	TOT_AMT_DEB      	NUMBER(16,0) NULL,
	DEB_REVERSED     	NUMBER(10,0) NULL,
	TOT_AMT_DEB_REV  	NUMBER(16,0) NULL,
	TRANSFERS        	NUMBER(10,0) NULL,
	TOT_AMT_TRANS    	NUMBER(16,0) NULL,
	TRANS_REVERSED   	NUMBER(10,0) NULL,
	TOT_AMT_TRANS_REV	NUMBER(16,0) NULL,
	INQUIRIES        	NUMBER(10,0) NULL,
	AUTH_TRAN        	NUMBER(10,0) NULL,
	TOT_AMT_AUTH     	NUMBER(16,0) NULL,
	AUTH_REVERSED    	NUMBER(10,0) NULL,
	TOT_AMT_AUTH_REV 	NUMBER(16,0) NULL,
	SUR_TRAN         	NUMBER(10,0) NULL,
	TOT_AMT_SUR_TRAN 	NUMBER(17,0) NULL,
	AUR_REVERSED     	NUMBER(10,0) NULL,
	TOT_AMT_SUR_REV  	NUMBER(17,0) NULL 
	);
	
--sequences
CREATE SEQUENCE CARD_INFO_SQ START WITH 121316 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE CARD_UPDATE_FILE_SQ START WITH 22474 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE AUF_ID_SEQ START WITH 22474 INCREMENT BY 1 NOCACHE NOCYCLE;

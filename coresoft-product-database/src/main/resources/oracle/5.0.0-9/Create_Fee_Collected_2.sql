create table FEE_COLLECTED (UNIQUE_ID number(10),INSTITUTION_ID varchar2(10),BRANCH_ID varchar2(10),PRODUCT_CATEGORY varchar2(20),
PRODUCT_TYPE varchar2(30),
FEE_TYPE varchar2(20),FEE_AMOUNT varchar2(20));


update FEE_COLLECTED set branch_id = '710';

CREATE SEQUENCE FEE_COLLECTED_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 999999999
    NOMINVALUE
    NOCYCLE
    CACHE 20
    NOORDER;
    
 CREATE SEQUENCE FEE_COLLECTED_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 999999999
    NOMINVALUE
    NOCYCLE
    CACHE 20
    NOORDER;
  
create table YEAR_AVERAGE_TRANSACTIONS (UNIQUE_ID number(10),BRANCH_ID varchar2(10),PRODUCT_CATEGORY varchar2(20),
PRODUCT_TYPE varchar2(30),DATE_RANGE varchar2(20),MIN_RANGE number(2),MAX_RANGE number(2),MONTH varchar2(10),TRANSACTION_COUNT varchar2(10),TRANSACTION_AMOUNT varchar2(20));    

CREATE SEQUENCE YEAR_AVERAGE_TRANSACTIONS_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 999999999
    NOMINVALUE
    NOCYCLE
    CACHE 20
    NOORDER;
    
 alter table USER_ACTIVITY_LOG add TRACKER_AVAILABLE NUMBER(1) DEFAULT 0; 

create table USER_ACTIVITY_LOG_TRACKER
(UALT_ID NUMBER(10),
UALH_ID NUMBER(10),
COMMENTS VARCHAR2(600),
FILE_LOCATION VARCHAR2(600),
CONSTRAINT "USER_ACTIVITY_LOG_TRACKER_PK" PRIMARY KEY ("UALT_ID") ENABLE,
CONSTRAINT "USER_ACTIVITY_LOG__FK" FOREIGN KEY ("UALH_ID") REFERENCES USER_ACTIVITY_LOG ("UALH_ID") ENABLE);

CREATE SEQUENCE USER_ACTIVITY_LOG_TRACK_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;

CREATE TABLE COMPLIANCE_FORM_FILE_FORMATE
(CAFF_ID	NUMBER,
FILE_TYPE	VARCHAR2(50),
CONSTRAINT "COMPLIA_FORM_FILE_FORMATE_PK" PRIMARY KEY ("CAFF_ID") ENABLE);

CREATE SEQUENCE COMPLIA_FORM_FILE_FORMATE_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;

CREATE TABLE COMPLIA_AGENCY_FORM_FIELD_SPEC
(CAFFS_ID	NUMBER,
FIELD_POSITION	VARCHAR2(10),
FIELD_NAME	VARCHAR2(50),
FIELD_DATA_TYPE	VARCHAR2(10),
FIELD_LENGTH	NUMBER,
PADDING_TYPE	VARCHAR2(10),
FIELD_DATAFORMAT	VARCHAR2(10),
FIELD_QUERY	VARCHAR2(10),
PREFIX	VARCHAR2(10),
SUFFIX	VARCHAR2(10),
SUB_STRING_YESNO	VARCHAR2(10),
BEGIN_INDEX	NUMBER,
END_INDEX	NUMBER,
CAFF_ID	NUMBER,
PADDING_CHAR              VARCHAR2(1),
CONSTRAINT "COMPLIA_AFORM_FIELD_SPEC_PK" PRIMARY KEY ("CAFFS_ID") ENABLE,
CONSTRAINT "COMPLIANCE_FORM_FILE_FK" FOREIGN KEY ("CAFF_ID") REFERENCES COMPLIANCE_FORM_FILE_FORMATE("CAFF_ID") ENABLE);


CREATE SEQUENCE COMPLIA_AFORM_FIELD_SPEC_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;

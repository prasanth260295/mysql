CREATE TABLE "CUST_DYN_FORM_EDIT_FIELDS" (
    "ID" NUMBER(30,0) NOT NULL ENABLE,
      "KEY" VARCHAR2(50),
      "VALUE" VARCHAR2(50),
     DYNAMIC_FORM_ID NUMBER(30,0),
   CONSTRAINT "CUST_DYN_FORM_EDIT_FLDS_PK" PRIMARY KEY ("ID") ENABLE ,
   CONSTRAINT "CUST_DYNAMIC_FORMS_FK" FOREIGN KEY ("DYNAMIC_FORM_ID") REFERENCES customer_dynamic_forms ("UNIQUE_ID") ENABLE);

CREATE SEQUENCE CUST_DYN_FORM_EDITED_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;

alter table interested_party add Account_Application_UID  NUMBER(15);

alter table account_application drop column source_of_funds ;
alter table account_application add source_of_funds varchar2(30);
alter table account_application add REFERRED_BY_CUSTOMER VARCHAR2(45);
alter table account_application add REFERRED_BY_BANK_USER VARCHAR2(45);
alter table account_application add HOW_DID_YOU_HEAR VARCHAR2(45);
alter table account_application add SALUTATION VARCHAR2(45);
alter table ACCOUNT_APPLICATION add OPTIN_DEBIT_CARD varchar2(20);
alter table ACCOUNT_APPLICATION add OPT_IN_SMS varchar2(20);
alter table account_application add OPTIN_MOBILE_BANKING VARCHAR2(20);
alter table account_application add OPTIN_INTERNET_BANKING VARCHAR2(20);

alter table deposit_account add source_of_funds varchar2(30);
alter table deposit_account add parent_account_id VARCHAR2(30);
alter table deposit add shadow_balance NUMBER(20,5);
alter table DEPOSIT add OPTIN_DEBIT_CARD varchar2(20);
alter table DEPOSIT add OPT_IN_SMS varchar2(20);
alter table DEPOSIT add OPTIN_INTERNET_BANKING varchar2(20);
alter table deposit add REFERRED_BY_CUSTOMER VARCHAR2(45)  ;
alter table deposit add REFERRED_BY_BANK_USER VARCHAR2(45);  
alter table deposit add HOW_DID_YOU_HEAR VARCHAR2(45);
alter table DEPOSIT add OPTIN_MOBILE_BANKING varchar2(20);

alter table account drop constraint ACCOUNT_PRODID_FK;
alter table account drop column PRODUCT_ID;
alter table account add PRODUCT_ID VARCHAR2(50);
alter table account add SALUTATION VARCHAR2(45);

alter table feature add group_Name varchar2(30);

CREATE TABLE "CHECK_ENTRY" (
    "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE, 
	  "TOKEN" VARCHAR2(50),
    "ACCOUNT_NUMBER" VARCHAR2(50),
    "RTN_NUMBER" VARCHAR2(50),
    "CHECK_NUMBER" VARCHAR2(50),
    "CHECK_AMOUNT"  NUMBER(20,5),
    "DOCUMENT_SCAN_DATE" Date,
   CONSTRAINT "CHECK_ENTRY_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);
   
create sequence CHECK_ENTRY_UID_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;

CREATE TABLE "DOCUMENT_SCAN_INFORMATION" (
    "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE, 
	  "TOKEN" VARCHAR2(50),
    "DOCUMENT_TYPE" VARCHAR2(50),
    "DOCUMENT_NAME" VARCHAR2(50),
    "DOCUMENT_INFORMATION" VARCHAR2(500),
   CONSTRAINT "DOCUMENT_SCAN_INFORMATION_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);

create sequence DOCUMENT_SCAN_INFO_UID_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;

CREATE TABLE "ACCOUNTABILITY_TYPE" (
    UNIQUE_ID NUMBER(30,0) NOT NULL ENABLE, 
	  ACCOUNTABILITY_TYPE VARCHAR2(100),
   CONSTRAINT "ACCOUNTABILITY_TYPE_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);
   
CREATE TABLE "ACCOUNTABILITY" (
   "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE,
   "ACCOUNTABLITY_TYPE" NUMBER(30,0),
   "PARENT_PARTY_ID" VARCHAR2(30),
   "CHILD_PARTY_ID"VARCHAR2(30),
   CONSTRAINT "ACCOUNTABILITY_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE,
   CONSTRAINT "PARENT_PARTY_FK" FOREIGN KEY ("PARENT_PARTY_ID") REFERENCES "PARTY" ("PARTY_ID") ENABLE,
   CONSTRAINT "CHILD_PARTY_FK" FOREIGN KEY ("CHILD_PARTY_ID") REFERENCES "PARTY" ("PARTY_ID") ENABLE);
   
create sequence ACCOUNTABILITY_UID_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;


CREATE TABLE "CUSTOMER_FORM_TEMPLATE" (
    "UNIQUE_FORM_ID" NUMBER(30,0) NOT NULL ENABLE, 
	  "FORM_NAME" VARCHAR2(100) NOT NULL ENABLE,
    "XML_FILE_NAME" VARCHAR2(100) NOT NULL ENABLE,
    "SRC_PDF_NAME"VARCHAR2(100) NOT NULL ENABLE,
    "DISPLAY_NAME" VARCHAR2(500),
    "CUSTOMER_TYPE"  VARCHAR2(30),
    "BUSINESS_PROCESS" VARCHAR2(50),
    "IS_EDITABLE" NUMBER(1),
   CONSTRAINT "CUSTOMER_FORM_TEMPLATE_PK" PRIMARY KEY ("UNIQUE_FORM_ID") ENABLE);

   
CREATE TABLE "CUSTOMER_DYNAMIC_FORMS" (
    "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE, 
	  "CUSTOMER_ID" VARCHAR2(20) ,
    "LATEST_FORM_PATH" VARCHAR2(200),
    "SCANNED_DATE" DATE,
    "PRINTED_DATE" DATE,
    "PDF_DATE"  DATE,
    "STATUS" VARCHAR2(20),
    "VERSION_NO" NUMBER(20),
    "PDF_NAME"  VARCHAR2(100),
   CONSTRAINT "CUSTOMER_DYNAMIC_FORMS_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);  
   
create sequence CUST_DYNAMIC_FORMS_UID_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;  
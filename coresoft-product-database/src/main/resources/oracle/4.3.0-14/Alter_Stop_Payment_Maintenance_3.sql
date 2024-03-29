CREATE TABLE HEAD_BUSINESS_RULE ("HEAD_ID" NUMBER(30,0) NOT NULL,
"BUSINESS_RULE_NAME" VARCHAR2(100),
CONSTRAINT "HEAD_ID_PK" PRIMARY KEY ("HEAD_ID"));


CREATE TABLE PROPERTY_BUSINESS_RULE ("PROPERTY_ID" NUMBER(30,0) NOT NULL,
"PROPERTY_NAME" VARCHAR2(100),
"IS_MANDATORY" NUMBER(5),
"IS_EDITABLE" NUMBER(5),
"DEFAULT_VALUE" VARCHAR2(100),
"HEAD_BUSINESS_RULE_ID" NUMBER(10), "IS_APPLICABLE" NUMBER(2),
CONSTRAINT "PROPERTY_ID_PK" PRIMARY KEY ("PROPERTY_ID"),
CONSTRAINT "HEAD_ID_FK" FOREIGN KEY ("HEAD_BUSINESS_RULE_ID") REFERENCES HEAD_BUSINESS_RULE ("HEAD_ID"));
 

alter table STOP_PAYMENT_MAINTENANCE add OLD_SOURCE_SUB_TYPE number(3);
alter table STOP_PAYMENT_MAINTENANCE add NEW_SOURCE_SUB_TYPE number(3);
alter table STOP_PAYMENT_INSTRUCTION add SOURCE_SUB_TYPE number(3);

 
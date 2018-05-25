CREATE TABLE DEPOSIT_PORTFOLIO 
   ( "UNIQUE_ID" NUMBER(20,0), 
"INSTITUTION_ID" NUMBER(10,0), 
"BRANCH_ID" VARCHAR2(5 BYTE), 
"EFFECTIVE_DATE" DATE, 
"PRODUCT_CATEGORY" VARCHAR2(20 BYTE), 
"PRODUCT_TYPE" VARCHAR2(30 BYTE), 
"NUMBER_OF_ACCOUNTS" NUMBER(5,0), 
"INTEREST_PAID" NUMBER(21,2), 
"CLOSING_AMOUNT" NUMBER(21,2));

CREATE TABLE LOAN_PORTFOLIO
   ( "UNIQUE_ID" NUMBER(20,0), 
"INSTITUTION_ID" NUMBER(10,0), 
"BRANCH_ID" VARCHAR2(5 BYTE), 
"EFFECTIVE_DATE" DATE, 
"PRODUCT_CATEGORY" VARCHAR2(20 BYTE), 
"PRODUCT_TYPE" VARCHAR2(30 BYTE), 
"NUMBER_OF_ACCOUNTS" NUMBER(5,0), 
"INTEREST_EARNED" NUMBER(21,2), 
"CLOSING_AMOUNT" NUMBER(21,2));
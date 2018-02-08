CREATE TABLE "SERVICING_ASSET_DEPRECIATION" (

 	"ID"                                           NUMBER(10) PRIMARY KEY,
 	"ACCOUNT_NUMBER"				               VARCHAR2(30),
 	"BUSINESS_DATE"         		               DATE,
 	"AMORTIZATION_DATE"					           DATE,
    "MONTH"                              		   VARCHAR2(20),
    "YEAR"                          			   VARCHAR2(20), 
    "OPENING_ASSET_VALUE"		                   NUMBER(20,5),
    "ASSET_DEPRECIATION_VALUE"		               NUMBER(20,5),
    "CLOSING_ASSET_VALUE"		                   NUMBER(20,5),
    "STATUS"                                       NUMBER(5));
    
CREATE SEQUENCE "SERVCNG_ASSET_DEPRECIA_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;

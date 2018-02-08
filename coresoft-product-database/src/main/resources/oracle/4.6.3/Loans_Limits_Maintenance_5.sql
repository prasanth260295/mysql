CREATE TABLE "LIMITS_MAINTENANCE" (

 	"ID"                                       NUMBER(10) PRIMARY KEY,
 	"LIMIT_CODE"				               VARCHAR2(30),
 	"LIMIT_DESC"         		               VARCHAR2(50),
 	"LIMIT_VALUE"					           NUMBER(20,5),
    "LIMIT_UNIT"                               VARCHAR2(20),
    "LIMIT_VALIDATION"                         VARCHAR2(50),
    "CREATED_BY"                               VARCHAR2(20), 
    "DATE_CREATED"		                       DATE,
    "LAST_MODIFIED_BY"		                   VARCHAR2(20),
    "DATE_LAST_MODIFIED"		               DATE);
    
CREATE SEQUENCE "LIMITS_MAINTENANCE_ID_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;


CREATE TABLE "LIMITS_MAINTENANCE_HISTORY" (

 	"ID"                                       NUMBER(10) PRIMARY KEY,
 	"LIMIT_CODE"				               VARCHAR2(30),
 	"LIMIT_DESC"         		               VARCHAR2(50),
 	"LIMIT_VALUE"					           NUMBER(20,5),
    "LIMIT_UNIT"                               VARCHAR2(20),
    "LIMIT_VALIDATION"                         VARCHAR2(50),
    "CREATED_BY"                               VARCHAR2(20), 
    "DATE_CREATED"		                       DATE,
    "LAST_MODIFIED_BY"		                   VARCHAR2(20),
    "DATE_LAST_MODIFIED"		               DATE,
    "LIMIT_MAINTENANCE"                        NUMBER(10));
    
CREATE SEQUENCE "LIMITS_MAINT_HISTORY_ID_SEQ" INCREMENT BY 1 START WITH 1 NOMAXVALUE NOMINVALUE NOCYCLE ORDER;


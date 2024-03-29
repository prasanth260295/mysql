CREATE TABLE "SDNENTRY"
  (
    "SDNENTRY_UID" NUMBER(10,0) NOT NULL ENABLE,
    "FIRST_NAME"   VARCHAR2(255 CHAR),
    "LAST_NAME"    VARCHAR2(255 CHAR),
    "TITLE"        VARCHAR2(255 CHAR),
    "SDNTYPE"      VARCHAR2(255 CHAR),
    "REMARKS"      VARCHAR2(255 CHAR),
    "PROGRAMNAME"  VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("SDNENTRY_UID")) ;


CREATE TABLE "SDN_MAINTENANCE_LOG"
  (
    "ID" NUMBER(10,0) NOT NULL ENABLE,
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    "LOADING_STATUS" VARCHAR2(255 CHAR),
    PRIMARY KEY ("ID"));


CREATE TABLE "SDN_COMMON_ENTRIES"
  (
    "UNIQUE_ID"    NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"         NUMBER(10,0),
    "SDNENTRY_UID" NUMBER(10,0),
    "ENTRY_TYPE"   VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID"));

CREATE TABLE "AKA_INFO"
  (
    "UNIQUE_ID"      NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"           NUMBER(10,0),
    "AKA_TYPE"       VARCHAR2(255 CHAR),
    "AKA_FIRST_NAME" VARCHAR2(255 CHAR),
    "AKA_LAST_NAME"  VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID") );

CREATE TABLE "DATE_OF_BIRTH_INFO"
  (
    "UNIQUE_ID"     NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"          NUMBER(10,0),
    "DATE_OF_BIRTH" VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID") );

CREATE TABLE "NATIONALITY_INFO"
  (
    "UNIQUE_ID" NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"      NUMBER(10,0),
    "COUNTRY"   VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID"));

CREATE TABLE "ID_INFO"
  (
    "UNIQUE_ID"       NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"            NUMBER(10,0),
    "ID_TYPE"         VARCHAR2(255 CHAR),
    "ID_NUMBER"       VARCHAR2(255 CHAR),
    "ID_COUNTRY"      VARCHAR2(255 CHAR),
    "ISSUED_DATE"     VARCHAR2(255 CHAR),
    "EXPIRATION_DATE" VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID"));

CREATE TABLE "PLACE_OF_BIRTH_INFO"
  (
    "UNIQUE_ID"      NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"           NUMBER(10,0),
    "PLACE_OF_BIRTH" VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID")) ;


CREATE TABLE "ADDRESS_INFO"
  (
    "UNIQUE_ID"         NUMBER(10,0) NOT NULL ENABLE,
    "U_ID"              NUMBER(10,0),
    "ADDRESS_1"         VARCHAR2(255 CHAR),
    "ADDRESS_2"         VARCHAR2(255 CHAR),
    "ADDRESS_3"         VARCHAR2(255 CHAR),
    "CITY"              VARCHAR2(255 CHAR),
    "STATE_OR_PROVINCE" VARCHAR2(255 CHAR),
    "POSTAL_CODE"       VARCHAR2(255 CHAR),
    "COUNTRY"           VARCHAR2(255 CHAR),
    "LOADED_DATE" DATE,
    "PUBLISHED_DATE" VARCHAR2(255 CHAR),
    PRIMARY KEY ("UNIQUE_ID") ) ;

CREATE TABLE "VESSEL_INFO"
  (
    "UNIQUE_ID"                NUMBER(10,0) NOT NULL ENABLE,
    "CALL_SIGN"                VARCHAR2(255 CHAR),
    "VESSEL_TYPE"              VARCHAR2(255 CHAR),
    "VESSEL_FLAG"              VARCHAR2(255 CHAR),
    "VESSEL_OWNER"             VARCHAR2(255 CHAR),
    "TONNAGE"                  NUMBER(10,0),
    "GROSS_REGISTERED_TONNAGE" NUMBER(10,0),
    PRIMARY KEY ("UNIQUE_ID") );

alter table person add NAICS_CODE VARCHAR2(15);
alter table person add CONTACT_DATE  DATE;    
alter table party add REFERRED_BY_BANK_USER VARCHAR2(45) ;
alter table party add REFERRED_BY_CUSTOMER  VARCHAR2(45);
alter table party add HOW_DID_YOU_HEAR  VARCHAR2(45);
alter table geographic_address add REQUEST_MADE VARCHAR2(45);

CREATE TABLE BUSINESS_SEC_REGID_MAPPING
(
	UNIQUE_ID int NOT NULL,
	BUSINESS_PRI_ID NUMBER(10) NOT NULL,
	UNIQUE_REGID NUMBER(10),
	PRIMARY KEY (UNIQUE_ID),
    FOREIGN KEY (BUSINESS_PRI_ID) REFERENCES BUSINESS_TYPE_MASTER(BUSINESS_ID),
	FOREIGN KEY (UNIQUE_REGID) REFERENCES ID_TYPE_MASTER(UNIQUE_ID)
);
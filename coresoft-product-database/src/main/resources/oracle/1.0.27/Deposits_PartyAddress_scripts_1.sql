alter table GEOGRAPHIC_ADDRESS add (COUNTY varchar2(12));

alter table GEOGRAPHIC_ADDRESS add (OTHER_STATE varchar2(12));

alter table GEOGRAPHIC_ADDRESS add (OTHER_COUNTRY varchar2(12));

alter table PARTY_ADDRESS add (ADDRESS_TYPE varchar2(10));

alter table PARTY_ADDRESS add (START_DATE date null);

alter table PARTY_ADDRESS add (END_DATE date null);


--Tax Information

alter table PARTY add (RESIDENCE_COUNTRY varchar2(12));

alter table PARTY add (TAX_RESIDENCE_COUNTRY varchar2(12));

alter table PARTY add (TAX_EXEMPTION_CODE varchar2(12));

alter table PERSON add (IMMIGRATION_STATUS varchar2(12));


--Credit Bureau score

CREATE TABLE CREDIT_BUREAU_ORGANIZATION
(
   ID decimal(5) PRIMARY KEY NOT NULL,
   NAME varchar2(50) NOT NULL
);

CREATE TABLE CREDIT_BUREAU_SUMMARY
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   CREDIT_RISK_ID decimal(10),
   CREDIT_BUREAU_ORG varchar2(50),
   BUREAU_SCORE decimal(15),
   REPORT_REQUEST_DATE date,
   SCORE_MODEL varchar2(50),
   UPDATED_TIME timestamp
);

CREATE TABLE CREDIT_RISK
(
   ID decimal(10) PRIMARY KEY NOT NULL
);

create sequence CREDIT_BUREAU_ORG_ID_SEQ start with 1;
create sequence CREDIT_BUREAU_SUMMARY_ID_SEQ start with 1;
create sequence CREDIT_RISK_ID_SEQ start with 1;

alter table PARTY add (CREDIT_RISK_ID decimal(10));

ALTER TABLE CREDIT_BUREAU_SUMMARY
ADD CONSTRAINT CREDIT_RISK_ID_FK
FOREIGN KEY (CREDIT_RISK_ID)
REFERENCES CREDIT_RISK(ID)
;

insert into CREDIT_BUREAU_ORGANIZATION(ID,NAME) values(CREDIT_BUREAU_ORG_ID_SEQ.nextval,'Equifax');
insert into CREDIT_BUREAU_ORGANIZATION(ID,NAME) values(CREDIT_BUREAU_ORG_ID_SEQ.nextval,'Experian');
insert into CREDIT_BUREAU_ORGANIZATION(ID,NAME) values(CREDIT_BUREAU_ORG_ID_SEQ.nextval,'TransUnion');


--Additional Customer Information

CREATE TABLE RELATION_TO_BANK
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   NAME varchar2(50)
);

CREATE TABLE INCOME_CLASSIFICATION
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   VALUE varchar2(50)
);

CREATE TABLE RELATIONSHIP_OFFICER
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   OFFICER_CODE varchar2(12),
   OFFICER_ROLE varchar2(12),
   DESCRIPTION varchar2(50)
);

create sequence RELATION_TO_BANK_ID_SEQ start with 1;
create sequence INCOME_CLASSIFICATION_ID_SEQ start with 1;
create sequence RELATIONSHIP_OFFICER_ID_SEQ start with 1;

alter table PARTY add (PRIVACY_OPT_OUT char(1));

alter table PARTY add (RELATIONSHIP_OFFICER varchar2(50));

alter table PERSON add (ANNUAL_INCOME number(10,2));

alter table PERSON add (INCOME_CLASSIFICATION varchar2(30));

alter table PERSON add (TRUTH_N_SAVING char(1));


--SIC Information & NAICS Information

CREATE TABLE SIC_INFORMATION
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   SECTOR varchar2(50),
   SUB_SECTOR_CODE varchar2(50),
   SUB_SECTOR_DESCRIPTION varchar2(50),
   GROUP_CODE varchar2(50),
   GROUP_DESCRIPTION varchar2(50),
   INDUSTRY_CODE varchar2(50),
   INDUSTRY_DESCRIPTION varchar2(50)
);

CREATE TABLE NAICS_INFORMATION
(
   ID decimal(10) PRIMARY KEY NOT NULL,
   SECTOR_CODE varchar2(50),
   SECTOR_DESCRIPTION varchar2(50),
   SUB_SECTOR_CODE varchar2(50),
   SUB_SECTOR_DESCRIPTION varchar2(50),
   GROUP_CODE varchar2(50),
   GROUP_DESCRIPTION varchar2(50),
   SUB_GROUP_CODE varchar2(50),
   SUB_GROUP_DESCRIPTION varchar2(50),
   INDUSTRY_CODE varchar2(50),
   INDUSTRY_DESCRIPTION varchar2(50)
);

create sequence SIC_INFORMATION_ID_SEQ start with 1;
create sequence NAICS_INFORMATION_ID_SEQ start with 1;

alter table ORGANIZATION add (SIC_CODE varchar2(15));

alter table ORGANIZATION add (NAICS_CODE varchar2(15));

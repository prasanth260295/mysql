alter table LOAN_ENTRY_POSTING_RULE rename column AFFECTS_SERVICING_FEE to AFFECTS_SERVICE_FEE_PAID;

--SERVICE_FEE(53)
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD ( "AFFECTS_SERVICE_FEE" NUMBER(1,0) DEFAULT 0 NOT NULL );

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_SERVICE_FEE) 
    VALUES(53, 1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1853',NULL,'0','Service Fee',2,1,0);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1953',NULL,'1','Service Fee',2,1,0);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1853'), 53, (select unique_id from entry_type where id='1953'), 53);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1953'), 53, (select unique_id from entry_type where id='1853'), 53);


insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1853') )  ;

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (42,(select unique_id from entry_type where id='1953') )  ;


--SERVICE_FEE_NET(54)
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD ( "AFFECTS_SERVICE_FEE_NET" NUMBER(1,0) DEFAULT 0 NOT NULL );

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_SERVICE_FEE_NET) 
    VALUES(54, 1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1854',NULL,'0','Service Fee Net',2,1,0);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1954',NULL,'1','Service Fee Net',2,1,0);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1854'), 54, (select unique_id from entry_type where id='1954'), 54);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1954'), 54, (select unique_id from entry_type where id='1854'), 54);

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (1,(select unique_id from entry_type where id='1854') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (25,(select unique_id from entry_type where id='1854') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1854') )  ;

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (13,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (15,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (35,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (42,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (110,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (111,(select unique_id from entry_type where id='1954') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,(select unique_id from entry_type where id='1954') )  ;

--REMAINING_SERVICE_FEE (55)
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD ( "AFFECTS_REMAINING_SERVICE_FEE" NUMBER(1,0) DEFAULT 0 NOT NULL );

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_REMAINING_SERVICE_FEE) 
    VALUES(55, 1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1855',NULL,'0','Remaining Service Fee',2,1,0);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1955',NULL,'1','Remaining Service Fee',2,1,0);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1855'), 55, (select unique_id from entry_type where id='1955'), 55);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1955'), 55, (select unique_id from entry_type where id='1855'), 55);

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1855') )  ;

--INTIALIZED_SVC_FEE(56)
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_SERVICE_FEE) 
    VALUES(56, 1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1856',NULL,'0','Initialized Service Fee',2,1,0);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1956',NULL,'1','Initialized Service Fee',2,1,0);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1856'), 56, (select unique_id from entry_type where id='1956'), 56);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1956'), 56, (select unique_id from entry_type where id='1856'), 56);

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1856') )  ;

--DAILY_SERVICE_FACTOR(Non Monetary)
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD ( "AFFECTS_DAILY_SERVICE_FACTOR" NUMBER(1,0) DEFAULT 0 NOT NULL );

update LOAN_ENTRY_POSTING_RULE set AFFECTS_DAILY_SERVICE_FACTOR=1, AFFECTS_SERVICE_FEE=1, AFFECTS_SERVICE_FEE_NET=1,
AFFECTS_REMAINING_SERVICE_FEE=1 where posting_rule_id='9999';

alter table loan add(DAILY_SERVICE_FACTOR NUMBER(20,5) DEFAULT 0 NOT NULL, SERVICE_FEE NUMBER(20,5) DEFAULT 0 NOT NULL,
SERVICE_FEE_PAID_LTD NUMBER(20,5) DEFAULT 0 NOT NULL, SERVICE_FEE_PAID_MTD NUMBER(20,5) DEFAULT 0 NOT NULL,
SERVICE_FEE_PAID_YTD NUMBER(20,5) DEFAULT 0 NOT NULL, SERVICE_FEE_NET NUMBER(20,5) DEFAULT 0 NOT NULL);

--BILLING BUCKET
ALTER TABLE BILLING_BUCKET ADD ( PAID_SERVICING_FEE NUMBER(20,5) DEFAULT 0);

ALTER TABLE BILLING_BUCKET ADD ( BILLED_SERVICE_FEE NUMBER(20,5) DEFAULT 0);

alter table LOAN_EVENT_MAINTE_LOG_ENTRIES modify old_value VARCHAR2(450 BYTE);
alter table LOAN_EVENT_MAINTE_LOG_ENTRIES modify new_value VARCHAR2(450 BYTE);

--DistributionHead ServicingFeeCode 47
INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
  VALUES((select max(entity_type_instance_id)+1 from entity_type_instance), 'DistributionHead', 'Distribution Head', 1, 'com.vsoftcorp.loan.model.entities.DistributionHead');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
  VALUES((select max(entity_type_instance_id) from entity_type_instance), 'Code', 'java.lang.String:47');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
  VALUES((select max(entity_type_instance_id) from entity_type_instance), 'Description', 'java.lang.String:Servicing Fee Code');



ALTER TABLE LOAN_ENTRY_POSTING_RULE
       ADD ( "AFFECTS_SERVICING_FEE" NUMBER(1,0) DEFAULT 0 NOT NULL );

INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_SERVICING_FEE)
    VALUES(50, 1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE)
    values((select max(unique_id)+1 from entry_type),'1850',null,'0','Servicing Fee',2,1);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE)
    values((select max(unique_id)+1 from entry_type),'1950',null,'1','Servicing Fee',2,1);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID)
    VALUES((select unique_id from entry_type where id='1850'), 50, (select unique_id from entry_type where id='1950'), 50);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID)
    VALUES((select unique_id from entry_type where id='1950'), 50, (select unique_id from entry_type where id='1850'), 50);


insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (1,(select unique_id from entry_type where id='1850') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (25,(select unique_id from entry_type where id='1850') )  ;

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (13,(select unique_id from entry_type where id='1950') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (15,(select unique_id from entry_type where id='1950') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (35,(select unique_id from entry_type where id='1950') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (110,(select unique_id from entry_type where id='1950') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (111,(select unique_id from entry_type where id='1950') )  ;
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,(select unique_id from entry_type where id='1950') )  ;










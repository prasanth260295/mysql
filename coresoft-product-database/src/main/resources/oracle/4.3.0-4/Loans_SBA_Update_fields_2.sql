ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_TOTAL_PAYMENTS_RECEIVED NUMBER(20) DEFAULT 0;


UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_TOTAL_PAYMENTS_RECEIVED=1 WHERE POSTING_RULE_ID='8882';
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_TOTAL_PAYMENTS_RECEIVED=1 WHERE POSTING_RULE_ID='8883';
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_TOTAL_PAYMENTS_RECEIVED=1 WHERE POSTING_RULE_ID='8813';
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_TOTAL_PAYMENTS_RECEIVED=1 WHERE POSTING_RULE_ID='8820';


INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFF_TOTAL_PAYMENTS_RECEIVED) VALUES(88, 1);


INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1888',NULL,'0','Total Payments Recieved',2,NULL,0);

INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1988',NULL,'1','Total Payments Recieved',2,NULL,0);


INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1888'), 88, (select unique_id from entry_type where id='1988'), 88);

INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1988'), 88, (select unique_id from entry_type where id='1888'), 88);


insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1888'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (299,(select unique_id from entry_type where id='1988'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (110,(select unique_id from entry_type where id='1888'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (310,(select unique_id from entry_type where id='1988'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (13,(select unique_id from entry_type where id='1888'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (213,(select unique_id from entry_type where id='1988'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (15,(select unique_id from entry_type where id='1888'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (215,(select unique_id from entry_type where id='1988'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (121,(select unique_id from entry_type where id='1888'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (321,(select unique_id from entry_type where id='1988'));
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1880',null,'0','YIELD AMT',2,NULL,0);
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
    values((select max(unique_id)+1 from entry_type),'1980',null,'1','YIELD AMT',2,NULL,0);
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD  AFF_YIELD_AMT NUMBER(20) DEFAULT 0;
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFF_YIELD_AMT) VALUES(80, 1);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1880'), 80, (select unique_id from entry_type where id='1980'), 80);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) 
    VALUES((select unique_id from entry_type where id='1980'), 80, (select unique_id from entry_type where id='1880'), 80);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (110,(SELECT unique_id FROM entry_type WHERE ID='1980'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (310,(SELECT unique_id FROM entry_type WHERE ID='1880'));

INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(64, '064', 0, 264, null, 'Yield Credit Adjustment', '1');
INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(264, '264', 1, 64, null, 'Yield Credit Adjustment Reversal', '0');
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
  VALUES(8864, '8864', null, '0', 'Yield Credit Adjustment', 2, NULL, '0');
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD  AFF_YIELD_CREDIT_ADJUST NUMBER(20) DEFAULT 0;
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFF_YIELD_CREDIT_ADJUST) VALUES(8864,1);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) VALUES(8864,8864,8864,8864);
insert into loan_event_entry_type_link values(64,8864);

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (064,(SELECT unique_id FROM entry_type WHERE ID='1880'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (264,(SELECT unique_id FROM entry_type WHERE ID='1980'));
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_YIELD_AMT=1 WHERE POSTING_RULE_ID=8882;
UPDATE LOAN_ENTRY_POSTING_RULE SET AFF_YIELD_AMT=1 WHERE POSTING_RULE_ID=8864;

--Added MininumInvestmentPercentage field to LoanProduct
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'LoanProduct'), 'MininumInvestmentPercentage', 23, 'Mininum Investment Percentage', 4, 0, 0, 'com.vsoftcorp.types.Percentage:0.3', 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'C', 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 1, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 1, 'DEFAULT');

--Added YieldPercentage field to ServicingLoanDetails
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (select entity_type_definition_id from entity_type_definition where type_name='ServicingLoanDetails'), 'YieldPercentage', 4, 'YieldPercentage', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 1);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');

--Added coloumns to Loan_participation tables
alter table loan_participation add CONTROLLING_INVESTOR VARCHAR2(30);
alter table loan_participation add YIELD_DISBURSED NUMBER(20,5) default 0;
alter table loan_participation add YIELD_COLLECTED_MTD NUMBER(20,5) default 0;
alter table loan_participation add YIELD_COLLECTED_YTD NUMBER(20,5) default 0;
alter table loan_participation add YIELD_TOTAL_COLLECTED NUMBER(20,5) default 0;
alter table loan_participation add YIELD_PAID_MTD NUMBER(20,5) default 0;
alter table loan_participation add YIELD_PAID_YTD NUMBER(20,5) default 0;
alter table loan_participation add YIELD_TOTAL_PAID NUMBER(20,5) default 0;

    

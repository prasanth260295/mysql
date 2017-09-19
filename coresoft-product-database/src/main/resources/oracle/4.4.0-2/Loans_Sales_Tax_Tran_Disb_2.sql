
INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(79, '079', 0, 279, null, 'Sales Tax Disbursment', '0');
INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(279, '279', 1, 79, null, 'Sales Tax Disbursment REVERSAL', '1');
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
VALUES(8879, '8879', null, '0', 'Sales Tax Disbursment', 2, NULL, '0');

ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD  AFFECTS_SALES_TAX_DISBURSMENT NUMBER(20) DEFAULT 0;
 INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_SALES_TAX_DISBURSMENT) VALUES(8879,1);
 
 INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) VALUES(8879,8879,8879,8879);
  
 insert into loan_event_entry_type_link values(79,8879);
 
 INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (079,(SELECT unique_id FROM entry_type WHERE ID='1890'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (279,(SELECT unique_id FROM entry_type WHERE ID='1990'));


UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_SALES_TAX_AMOUNT=1 WHERE POSTING_RULE_ID=8879;

alter table transaction_group_entry add sales_tax  NUMBER(20,5)  default 0;
alter table loan_account_event add SALES_TAX_AGENCY_CODE varchar2(100);

--added script under account credit transaction type
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((SELECT property_definition_id FROM property_definition WHERE property_name LIKE 'Code' AND entity_type_definition_id IN (SELECT entity_type_definition_id   FROM entity_type_definition where type_name LIKE 'AccountCreditTransactionType' )), 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((SELECT property_definition_id FROM property_definition WHERE property_name LIKE 'Description' AND entity_type_definition_id IN (SELECT entity_type_definition_id   FROM entity_type_definition where type_name LIKE 'AccountCreditTransactionType' )), 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((SELECT property_definition_id FROM property_definition WHERE property_name LIKE 'ShortDescription' AND entity_type_definition_id IN (SELECT entity_type_definition_id   FROM entity_type_definition where type_name LIKE 'AccountCreditTransactionType' )), 0, 0, 1, 0, 'DEFAULT');
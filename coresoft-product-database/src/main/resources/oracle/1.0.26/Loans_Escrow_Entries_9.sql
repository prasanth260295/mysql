--Event to Entry Link
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID,ENTRY_TYPE_ID)
VALUES((select event_type_id from loan_event_type where coresoft_event_code='040'), (select unique_id from entry_type where id='1851'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID,ENTRY_TYPE_ID)
VALUES((select event_type_id from loan_event_type where coresoft_event_code='240'), (select unique_id from entry_type where id='1951'));

--Commenting because the below are already in 1.0.23
--INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT, NEEDS_BALANCING, OFFSET_APPLICATION_TYPE, OFFSET_TRANCODE)
--  VALUES(23, '023', 0, 223, 38, 'Escrow Debit Adjustment', '0', 0, NULL, NULL);
--
--INSERT INTO LOAN_EVENT_TYPE(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT, NEEDS_BALANCING, OFFSET_APPLICATION_TYPE, OFFSET_TRANCODE)
--  VALUES(223, '223', 1, 23, 6, 'Escrow Debit Adjustment Reversal', '1', 0, NULL, NULL);

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID,ENTRY_TYPE_ID)
VALUES((select event_type_id from loan_event_type where coresoft_event_code='023'), (select unique_id from entry_type where id='1852'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID,ENTRY_TYPE_ID)
VALUES((select event_type_id from loan_event_type where coresoft_event_code='223'), (select unique_id from entry_type where id='1952'));

 

---- changing description to Adjustments.
update loan_event_type set description='Escrow Debit Adjustment' where coresoft_event_code = '023';
update loan_event_type set description='Escrow Debit Adjustment Reversal' where coresoft_event_code = '223';
update loan_event_type set description='Escrow Credit Adjustment' where coresoft_event_code = '033';
update loan_event_type set description='Escrow Credit Adjustment Reversal' where coresoft_event_code = '233';

 

 
 
	
	

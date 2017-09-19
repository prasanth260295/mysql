ALTER TABLE LOAN_ACCOUNT ADD(IRS_AMOUNT NUMBER(20,5));

--update PROPERTY_DEFINITION  set VALID_VALUES = 'java.lang.Integer:{default={1=Escrow,2=Ah Life}}' where PROPERTY_NAME like 'AnalysisType';
--
--
--update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN = 0 where   PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where PROPERTY_NAME like 'EscrowPaymentChangeDate');
--
--update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN = 0 where   PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where PROPERTY_NAME like 'EscrowAnalysisLastDate')
--and STATE_NAME in ('INQUIRY','ACCOUNT_CREATED');
--
--update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN = 0, EDITABLE = 1 where STATE_NAME = 'INQUIRY'
--and PROPERTY_DEFINITION_ID in (select PROPERTY_DEFINITION_ID from PROPERTY_PRESENTER_ATTRIBUTES where PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where property_name like 'NextEscrowDue'));
--update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN = 0, EDITABLE = 1 where STATE_NAME = 'ACCOUNT_CREATED'
--and PROPERTY_DEFINITION_ID in (select PROPERTY_DEFINITION_ID from PROPERTY_PRESENTER_ATTRIBUTES where PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where property_name like 'NextEscrowDue'));
--
--update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN = 1 where PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where property_name like 'ProcessedDate');
--
--
--
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval, 42064, 'SurplusTolerance', 10, 'Surplus Tolerance', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 10.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 1, 0, 0, 1, 1, 0, 'U', 0, 0);
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, 'INQUIRY');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, 'DEFAULT');
--
--update PROPERTY_DEFINITION set VALUE_TYPE_DEFINITION_ID = 2 , valid_values =
--'java.lang.Integer:{default={0=Pending,1=Done}}' where PROPERTY_NAME like 'PaymentChangeStatus';
--
--update PROPERTY_DEFINITION set DEFAULT_VALUE = 'com.vsoftcorp.time.Duration:DAY:30'
--where PROPERTY_NAME = 'StatusClosePeriod';
--
--update property_definition set property_name = 'NewEscrowPaymentWithoutShortageSurplus' ,
-- PROPERTY_DESCRIPTION = 'New Escrow Payment Without Shortage/Surplus' where property_name = 'NewEscrowPaymentWithoutShortage';
--
--update property  set property_name = 'NewEscrowPaymentWithoutShortageSurplus' 
--where property_name = 'New Escrow Payment Without Shortage/Surplus';
--
--
--update property_definition set ENTITY_TYPE_DEFINITION_ID = (select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where type_name like 'EscrowSummary') 
--where property_name like 'SurplusTolerance';

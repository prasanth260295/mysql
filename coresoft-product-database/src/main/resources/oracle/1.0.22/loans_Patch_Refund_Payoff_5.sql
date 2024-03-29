--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval,(select ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME='AHLifeInsurance'),'InsuranceRefundonPayoff', 16, 'InsuranceRefundonPayoff', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 1, 0, 'UC', 0, 0);
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval,(select ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME='EscrowSummary'), 'EscrowRefundonPayoff', 14, 'EscrowRefundonPayoff', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 1, 0, 'UC', 0, 0);
--
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval,(select ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME='EscrowSummary'), 'LifeAHRefundonPayoff', 15, 'Life A/H Refund on Payoff', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 1, 0, 'UC', 0, 0);
--
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');



ALTER TABLE LOAN_ACCOUNT ADD(INTEREST_REFUND_PAYOFF NUMBER(15,5));
ALTER TABLE LOAN_ACCOUNT ADD(OVER_SHORT_AMOUNT_PAYOFF NUMBER(15,5));


--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
-- (select ENTITY_TYPE_INSTANCE_ID ,'LifeAHRefundonPayoff', 'com.vsoftcorp.finance.Money:USD 0.00'
-- from ENTITY_TYPE_INSTANCE where type_name='EscrowSummary');
--
--
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
-- (select ENTITY_TYPE_INSTANCE_ID ,'EscrowRefundonPayoff', 'com.vsoftcorp.finance.Money:USD 0.00'
-- from ENTITY_TYPE_INSTANCE where type_name='EscrowSummary');
--
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
-- (select ENTITY_TYPE_INSTANCE_ID ,'InsuranceRefundonPayoff', 'com.vsoftcorp.finance.Money:USD 0.00'
-- from ENTITY_TYPE_INSTANCE where type_name='AHLifeInsurance');




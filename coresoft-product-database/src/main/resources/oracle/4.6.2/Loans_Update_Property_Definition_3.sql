update property_definition set property_description='Trial Total Amount' where property_name='TrailTotalAmount' 
and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'LoanModification');

update property_definition set property_description='Trial Escrow Amount' where property_name='TrailEscrowAmount' 
and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'LoanModification');

update property_definition set property_description='Trial P '||'&'||' I Amount' where property_name='TrailPandIAmount' 
and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'LoanModification');

update property_definition set property_description='Trial Period End Date' where property_name='TrailPeriodEndDate' 
and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'LoanModification');

update property_definition set property_description='Trial Period Start Date' where property_name='TrailPeriodStartDate' 
and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'LoanModification');

----------------------------------------YTDInterestPaid-----------------------------------------------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'EscrowDetail'), 'YTDInterestPaid', 13, 'YTD Interest Paid', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0);
  
  INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
  
------------------------------Loan account alter-----------------------------------------------------------------------------------
  
ALTER TABLE LOAN_ACCOUNT ADD ESCROW_DAILY_INT_AMOUNT NUMBER(10,5);
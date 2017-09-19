-------------------------------------BillReceipt----------------------------------------------------------------------------------------------------------------------------

INSERT INTO ENTITY_TYPE_DEFINITION(ENTITY_TYPE_DEFINITION_ID, TYPE_NAME, TYPE_DESCRIPTION, ENTITY_TYPE_INSTANCE_CLASS, BASE_ENTITY_TYPE_DEF_ID, LOOKUP, SYSTEM, TEMPLATE,EXTENDABLE_FLAG)
  VALUES(ENTITYTYPEDEFID_SEQ.nextval, 'BillReceipt', 'Bill Receipt', 'com.vsoftcorp.loan.model.entities.BillReceipt', (select Entity_Type_Definition_Id from Entity_Type_Definition where Type_Name='RepaymentMode'), 0, 0, NULL,0);
  
  INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.NEXTVAL, (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION  WHERE TYPE_NAME ='BillReceipt'), 'Type', -1, 'Type', 2, 0, 0, 'java.lang.Integer:4', 1, 'java.lang.Integer:{default={2=Coupon Book,1=Billing Notice,3= Statement,0=Auto Draft,4=Bill Receipt}}', 1, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
  
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'ACCOUNT_CREATED');
  
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
VALUES(PROPDEFID_SEQ.NEXTVAL, (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION  WHERE TYPE_NAME ='BillReceipt'), 'PrintBillingNotice', 1, 'Print Billing Notice', 0, 0, 0, 'java.lang.Boolean:true', 0, 'java.lang.Boolean:{default={true=Yes, false=No}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 0);
  
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
  
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
VALUES(PROPDEFID_SEQ.NEXTVAL, (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION  WHERE TYPE_NAME ='BillReceipt'), 'PrintOnCollections', 2, 'Print On Collections', 0, 0, 0, 'java.lang.Boolean:true', 0, 'java.lang.Boolean:{default={true=Yes, false=No}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 0);
  
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO ENTITY_TYPE_DEFINITION(ENTITY_TYPE_DEFINITION_ID, TYPE_NAME, TYPE_DESCRIPTION, ENTITY_TYPE_INSTANCE_CLASS, BASE_ENTITY_TYPE_DEF_ID, LOOKUP, SYSTEM, TEMPLATE)
  VALUES(ENTITYTYPEDEFID_SEQ.nextval, 'PersonalPropertyBusinessCollateralAppraisal', 'Personal Property Business Collateral Appraisal', 'com.vsoftcorp.loan.model.entities.PersonalPropertyBusinessCollateralAppraisal', (select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where type_name = 'CollateralAppraisal'), 0, 1, NULL);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,ENTITYTYPEDEFID_SEQ.currval, 'SellingPrice', 1, 'Selling Price', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 1, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,ENTITYTYPEDEFID_SEQ.currval, 'LoanToValueRatio', 3, 'Loan To Value Ratio', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 1, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,ENTITYTYPEDEFID_SEQ.currval, 'AppraisedEvaluationValue', 0, 'Appraised/Evaluation Value', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 1, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,ENTITYTYPEDEFID_SEQ.currval, 'AppraisalEvaluationDate', 2, 'Appraisal/Evaluation Date', 5, 0, 0, NULL, 0, 'com.vsoftcorp.time.Date:{default={}}', 0, 1, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');

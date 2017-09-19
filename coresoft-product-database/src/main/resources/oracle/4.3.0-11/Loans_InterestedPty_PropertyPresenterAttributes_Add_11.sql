INSERT INTO ENTITY_TYPE_DEFINITION(ENTITY_TYPE_DEFINITION_ID, TYPE_NAME, TYPE_DESCRIPTION, ENTITY_TYPE_INSTANCE_CLASS, BASE_ENTITY_TYPE_DEF_ID, LOOKUP, SYSTEM,EXTENDABLE_FLAG)VALUES(ENTITYTYPEDEFID_SEQ.nextval, 'InterestedPty', 'Interested-Pty', 'com.vsoftcorp.loan.model.entities.InterestedPty', 601, 1, 0,0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'LiabilityCalculation', -1, 'Liability Calculation', 2, 0, 0, 'java.lang.Integer:0', 1, 'java.lang.Integer:{default={0=Percentage of Loan, 1=Amount}}', 1, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'LiabilityAmount', -1, 'Liability Amount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'RoleName', -1, 'Role Name', 1, 0, 0, 'java.lang.String:Interested-Pty', 1, 'java.lang.String:{default={}}', 0, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'RoleId', -1, 'Role Id', 2, 0, 0, 'java.lang.Integer:22', 1, 'java.lang.Integer:{default={}}', 0, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
  INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'SendPastDueNotice', -1, 'Send Past Due Notice', 0, 0, 0, NULL, 0, 'java.lang.Boolean:{default={true=Yes, false=No}}', 1, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'Races', -1, 'Races', 2, 0, 0, NULL, 0, 'java.lang.Integer:{default={3=Black or African American, 5=White, 7=Information not Provided, 2=Asian or Pacific Islander, 4=Hispanic, 8=Not Applicable, 1=American Indian or Native, 6=Other}}', 1, 0, 0, 1, 1, 0, 0, NULL, 0, 0);
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, ENTITYTYPEDEFID_SEQ.currval, 'LiabilityPercentage', -1, 'Liability Percentage', 4, 0, 0, 'com.vsoftcorp.types.Percentage:1', 1, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 1, 1, 0, 0, NULL, 0, 0);


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'INQUIRY');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'ACCOUNT_CREATED');



INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleName'), 0, 0, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleName'), 0, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleName'), 0, 0, 0, 1, 'ACCOUNT_CREATED');

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleId'), 0, 0, 0, 1, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleId'), 0, 0, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='RoleId'), 0, 0, 0, 1, 'INQUIRY');

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'ACCOUNT_CREATED');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='Races'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='Races'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='Races'), 0, 0, 0, 0, 'ACCOUNT_CREATED');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InterestedPty') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'ACCOUNT_CREATED');
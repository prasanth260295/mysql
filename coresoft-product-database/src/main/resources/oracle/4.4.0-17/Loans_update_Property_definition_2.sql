update property_definition set VALID_VALUES='java.lang.Integer:{default={1=VSoft Bank}}' where property_name='AssignedBank';

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY,MAX_LENGTH,DATA_EXPRESSION)
  VALUES((select max(property_definition_id)+1 from property_definition), 421, 'AssignedRegion', 8, 'Assigned Region', 2, 0, 0, NULL, 0, 'java.lang.Integer:{default={2=Petrick Henry National Bank,1=First National Bank,3=People National Bank}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0,999,'.*');

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');

update property set property_name='AssignedRegion' where property_name='AssignedBank';

alter table loan_application_event add region_id varchar2(20);

update property_definition set property_description='Assigned Bank' where property_name='AssignedBank';
--Commented because these scripts already in 1.0.24 folder
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY, MAX_LENGTH, DATA_EXPRESSION)
--  VALUES((select max(property_definition_id)+1 from property_definition), (select entity_type_definition_id from entity_type_definition where type_name='FixedAmountBasedInsurance'), 'PastDueInsuranceAmount', 3, 'PastDueInsuranceAmount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 1, 999, '.*');
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 1, 0, 0, 0, 'DEFAULT');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
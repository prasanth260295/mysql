
--EntityName--PaymentScheduleItem

--propertyName=PrincipalInterestPaymentAmount

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (SELECT entity_type_definition_id FROM entity_type_definition WHERE TYPE_NAME = 'PaymentScheduleItem'), 'PrincipalInterestPaymentAmount', 3, 'PrincipalInterestPaymentAmount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 0);

--PrincipalInterestPaymentAmount

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');

--PropertyName--EscrowPaymentAmount

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (SELECT entity_type_definition_id FROM entity_type_definition WHERE TYPE_NAME = 'PaymentScheduleItem'), 'EscrowPaymentAmount', 4, 'EscrowPaymentAmount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0);

--EscrowPaymentAmount

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');

--PropertyName--CreditLifeInsuranceAmount

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (SELECT entity_type_definition_id FROM entity_type_definition WHERE TYPE_NAME = 'PaymentScheduleItem'), 'CreditLifeInsuranceAmount', 4, 'CreditLifeInsuranceAmount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0);

--CreditLifeInsuranceAmount

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');

--PropertyName--AHInsuranceAmount

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (SELECT entity_type_definition_id FROM entity_type_definition WHERE TYPE_NAME = 'PaymentScheduleItem'), 'AHInsuranceAmount', 4, 'AHInsuranceAmount', 8, 0, 0, 'com.vsoftcorp.finance.Money:USD 0.00', 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0);

--AHInsuranceAmount

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');




--Update Valid Values for PaymentType


update property_definition set valid_values='java.lang.Integer:{default={2=Principal And Interest, 0=Principal Only, 1=Interest Only, 3=Payment Includes Interest , 4= Payment includes interest And escrow, 5=Interest And Escrow ,6= Escrow Only}}' 
where property_name='PaymentType' and Entity_type_definition_id=(select Entity_type_definition_id from Entity_type_definition where type_name='PaymentScheduleItem');




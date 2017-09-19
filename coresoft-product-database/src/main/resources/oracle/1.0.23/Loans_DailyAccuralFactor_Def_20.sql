delete from Entry_type where ID in(1958,1858);
delete from Loan_Entry_type where entry_name ='58';
delete from Loan_Event_Entry_type_link where Event_type_id in(99,299) and Entry_type_id in(1858,1958);
delete from Entity_type_definition where type_name in('CreditLifeRateHistory',
'AHInsuranceRateHistory','RangeBasedRateTier','LoanTermBasedRateTier');
delete from associate_definition where associate_name in('CreditLifeRateHistory',
'AHInsuranceRateHistory','RangeBasedRateTier','LoanTermBasedRateTier');

--property_name='ReportToCreditBureau'
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES((select max(property_definition_id)+1 from property_definition), (select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where TYPE_NAME='LoanProduct'), 'ReportToCreditBureau', 18, 'Report To Credit Bureau', 0, 1, 0, 'java.lang.Boolean:false', 0, 'java.lang.Boolean:{default={true=Yes, false=No}}', 0, 1, 0, 0, 1, 1, 0, 'U', 0, 1);
----property PresenterAttributes
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT');




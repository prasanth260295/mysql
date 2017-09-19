UPDATE entity_type_definition SET type_name='LeasingCompanies', type_description='Leasing Companies',entity_type_instance_class='com.vsoftcorp.loan.model.entities.LeasingCompanies' WHERE entity_type_definition_id IN(SELECT entity_type_definition_id FROM entity_type_definition WHERE type_name LIKE 'SalesTaxAgency');


--RoutingTransitNumber
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select entity_type_definition_id from entity_type_definition where type_name like 'LeasingCompanies'),  'RoutingTransitNumber', 12, 'Routing Transit Number', 9, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'U', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
  

--removed link b/w coresoftproduct and salestaxsummary
  
  delete from associate_presenter_attributes where associate_definition_id in(select associate_definition_id from associate_definition where associate_name like 'SalesTaxSummary');
  delete  from associate_definition where associate_definition_id in(select associate_definition_id from associate_definition where associate_name like 'SalesTaxSummary');
  
  
  UPDATE associate_definition SET associate_name='LeasingCompanies',associate_description='Leasing Companies',associate_type_definition_id=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'LeasingCompanies') where associate_definition_id in(select associate_definition_id from associate_definition where associate_name like 'SalesTaxAgency');
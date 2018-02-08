UPDATE PROPERTY_DEFINITION SET PROPERTY_NAME='EscrowAccountNumber',PROPERTY_DESCRIPTION='Escrow Account Number'
WHERE ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE 
TYPE_NAME LIKE 'ExternalAgency') AND PROPERTY_NAME='AccountNumber';


update  property_definition set property_name='EscrowAccountNumber' where 
property_name like 'AccountNumber' and entity_type_definition_id in (
select entity_type_definition_id from entity_type_definition where base_entity_type_def_id in (
select entity_type_definition_id from entity_type_definition where type_name like 'ExternalAgency')) ;

update  property set property_name='EscrowAccountNumber' where  property_name like 'AccountNumber' and  entity_type_instance_id in (
select entity_type_instance_id from entity_type_instance where type_name in (
select type_name from entity_type_definition where base_entity_type_def_id in (
select entity_type_definition_id from entity_type_definition where type_name like 'ExternalAgency')));

 --------------------------ServiceAllStates------------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency'),  'ServiceAllStates', 20, 'Service All States', 0, 0, 0, 'java.lang.Boolean:false', 0, 'java.lang.Boolean:{default={false=No,true=Yes}}', 0, 1, 1, 0, 1, 0, 0, 'U', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES(PROPDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT'); 
  
UPDATE PROPERTY_DEFINITION SET MANDATORY=1,MANDATORY_OVERRIDEN=1 WHERE PROPERTY_NAME LIKE 'State' AND ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency');

UPDATE PROPERTY_DEFINITION SET VALID_VALUES='java.lang.String:{default={CO=CO,NE=NE,WY=WY}}' WHERE PROPERTY_NAME LIKE 'State' AND ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency');
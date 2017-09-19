UPDATE PROPERTY_DEFINITION SET VALID_VALUES='java.lang.Integer:{default={}}' WHERE PROPERTY_NAME='ZIP' AND ENTITY_TYPE_DEFINITION_ID  IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME ='EscrowDetail');

UPDATE ENTITY_TYPE_DEFINITION SET LOOKUP=1 WHERE TYPE_NAME LIKE '%Agency%';

UPDATE PROPERTY_DEFINITION SET DESCRIPTION_FIELD=0 WHERE ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency');

UPDATE PROPERTY_DEFINITION SET DESCRIPTION_FIELD=1 WHERE ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency') and property_name='AgencyCode';

UPDATE PROPERTY_DEFINITION SET DESCRIPTION_FIELD=1 WHERE ENTITY_TYPE_DEFINITION_ID IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'ExternalAgency') and property_name='AgencyName';
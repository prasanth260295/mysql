update ASSOCIATE_PRESENTER_ATTRIBUTES set hidden=0 where ASSOCIATE_DEFINITION_ID in(select ASSOCIATE_DEFINITION_ID from associate_definition where 
ENTITY_TYPE_DEFINITION_ID in(select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_definition where TYPE_NAME='EscrowBillingDetails')
and ASSOCIATE_NAME='EscrowBill');

update ASSOCIATE_PRESENTER_ATTRIBUTES set editable=0 where ASSOCIATE_DEFINITION_ID in(select ASSOCIATE_DEFINITION_ID from associate_definition where 
ENTITY_TYPE_DEFINITION_ID in(select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_definition where TYPE_NAME='EscrowBillingDetails')
and ASSOCIATE_NAME='EscrowBill') and state_name='INQUIRY';

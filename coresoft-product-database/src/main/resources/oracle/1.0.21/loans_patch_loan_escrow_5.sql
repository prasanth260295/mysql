--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval, 42064, 'ProcessedDate', 9, 'Processed Date', 5, 0, 0, NULL, 0, 'com.vsoftcorp.time.Date:{default={}}', 0, 0, 0, 0, 1, 1, 0, 'UC', 0, 0);
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, N'DEFAULT');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, N'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 1, 0, 0, 0, N'INQUIRY');
--
--
--
--INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
--  VALUES(PROPDEFID_SEQ.nextval, 42061, 'LastEscrowAnalysisProcessedDate', 12, 'Last Escrow Analysis Processed Date', 5, 0, 0, NULL, 0, 'com.vsoftcorp.time.Date:{default={}}', 0, 0, 0, 0, 1, 1, 0, NULL, 0, 0);
--
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, N'DEFAULT');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, N'ACCOUNT_CREATED');
--INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(PROPDEFID_SEQ.currval, 0, 0, 0, 0, N'INQUIRY');
--
--
--update ENTITY_TYPE_DEFINITION set ENTITY_TYPE_INSTANCE_CLASS = 'com.vsoftcorp.loan.model.entities.EscrowAnalysisHistory' 
--where TYPE_NAME like 'EscrowAnalysisHistory';
--
--update ASSOCIATE_PRESENTER_ATTRIBUTES set HIDDEN = 0 where ASSOCIATE_DEFINITION_ID in (
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where  associate_NAME like 'EscrowAnalysisHistory');
--
--update PROPERTY_PRESENTER_ATTRIBUTES set hidden = 0 where PROPERTY_DEFINITION_ID in (
--select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID = (select ENTITY_TYPE_DEFINITION_ID from 
--ENTITY_TYPE_DEFINITION where TYPE_NAME like 'EscrowAnalysisHistory'));
--
--
--update ASSOCIATE_PRESENTER_ATTRIBUTES set HIDDEN = 0, EDITABLE = 0 where ASSOCIATE_DEFINITION_ID in (select ASSOCIATE_DEFINITION_ID from 
--ASSOCIATE_DEFINITION where ASSOCIATE_NAME like 'PaymentAdjustmentHistory') and STATE_NAME in ('ACCOUNT_CREATED', 'INQUIRY');
--
--update PROPERTY_PRESENTER_ATTRIBUTES set  EDITABLE = 0 where PROPERTY_DEFINITION_ID in (select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID in (
--select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where TYPE_NAME like 'PaymentAdjustmentHistory'));
--
--
--
--update PROPERTY_DEFINITION set valid_values = 'java.lang.Integer:{default={2=Single Pay,4=Semi Annual,1=Annual,3=Quarterly,0=Monthly,24= Once In Two Years,36=Once In Three Years}}'
--where PROPERTY_DEFINITION_ID in (select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION where PROPERTY_NAME = 'DistributionFrequency');
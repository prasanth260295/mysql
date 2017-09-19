--Removing the InspectionDetails properties
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'InspectionDetails') and property_name like 'InspectionMethod');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='InspectionMethod' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='InspectionDetails');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'InspectionDetails') and property_name like 'BudgetAmountCompleted');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='BudgetAmountCompleted' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='InspectionDetails');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'InspectionDetails') and property_name like 'BudgetPercentageCompleted');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='BudgetPercentageCompleted' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='InspectionDetails');
delete from associate_presenter_attributes where associate_definition_id in (select associate_definition_id from associate_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'InspectionDetails') and associate_name like 'InspectionSchedule');
DELETE FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME='InspectionSchedule' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='InspectionDetails');

--delete Inspectiondetails Associate under SubBudgetItem
delete from associate_presenter_attributes where associate_definition_id in (select associate_definition_id from associate_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'SubBudgetItem') and associate_name like 'InspectionDetails'); 
DELETE FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME='InspectionDetails' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='SubBudgetItem');

--Adding Inspection Schedule associate to SubBudgetItem--------------
INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
  VALUES(ASSOCDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'SubBudgetItem'), 'InspectionSchedule', 1, 'Inspection Schedule',(select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where TYPE_NAME='InspectionSchedule'),0,1,0,0,0,1,0,1,0,0,0,null,0,0,1,1,0,'U',null,0);

  
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'DEFAULT');
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'INQUIRY');

--Removing the BudgetPercentageAssigned from InspectionSchedule
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'InspectionSchedule') and property_name like 'BudgetPercentageAssigned');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='BudgetPercentageAssigned' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='InspectionSchedule');

--Adding properties under InspectionSchedule entity
--InspectedBy for InspectionSchedule--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'InspectionSchedule'), 'InspectedBy', 9, 'Inspected By', 1, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);
 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
  
--DrawNumber for InspectionSchedule-------------------------------------------------------------------------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'InspectionSchedule'), 'DrawNumber', 10, 'Draw Number', 2, 0, 0, NULL, 0, 'java.lang.Integer:{default={1=01,2=02,3=03,4=04,5=05,6=06,7=07,8=08,9=09,10=10,11=11,12=12,13=13,14=14,15=15,16=16,17=17,18=18,19=19,20=20,21=21,22=22,23=23,24=24,25=25}}', 0, 0, 0, 0, 1, 0, 0, 'U', 0, 0);
  
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
    

--AmountRemaining for InspectionSchedule--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'InspectionSchedule'), 'AmountRemaining', 11, 'Amount Remaining', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

  
 --AmountCompleted for SubBudgetItem--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'SubBudgetItem'), 'AmountCompleted', 8, 'Amount Completed', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

--Percentage Completed for SubBudgetItem--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'SubBudgetItem'), 'PercentageCompleted', 9, 'Percentage Completed', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');  

--Removing ConstructionContractor under SubBudget------
delete from associate_presenter_attributes where associate_definition_id in (select associate_definition_id from associate_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'SubBudget') and associate_name like 'ConstructionContractor');
DELETE FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME='ConstructionContractor' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='SubBudget');
  
 --AmountCompleted for SubBudget--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'SubBudget'), 'AmountCompleted', 2, 'Amount Completed', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

--Percentage Completed for SubBudget--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'SubBudget'), 'PercentageCompleted', 3, 'Percentage Completed', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');  


 --AmountCompleted for ProjectPhase --------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ProjectPhase'), 'AmountCompleted', 6, 'Amount Completed', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

--Percentage Completed for ProjectPhase--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ProjectPhase'), 'PercentageCompleted', 7, 'Percentage Completed', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');  

--delete ConstructionContractor Associate under ConstructionProjectBudget 
delete from associate_presenter_attributes where associate_definition_id in (select associate_definition_id from associate_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionProjectBudget') and associate_name like 'ConstructionContractor');
  DELETE FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME='ConstructionContractor' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionProjectBudget');  


 --Customer Equity Injection for ConstructionProjectBudget---------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'CustomerEquityInjection', 7, 'Customer Equity Injection', 2, 0, 0, NULL, 0, 'java.lang.Integer:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'UC', 0, 0);
 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
 
 --AmountCompleted for ConstructionProjectBudget --------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'AmountCompleted', 5, 'Amount Completed', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

--Percentage Completed for ConstructionProjectBudget--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'PercentageCompleted', 6, 'Percentage Completed', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');  

--Contractor Name for ConstructionProjectBudget ---------------------

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'ContractorName', 8, 'Contractor Name', 1, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'UC', 0, 0);
 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
  
--Work Phone for ConstructionProjectBudget---------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'ContractorWorkPhone', 9, 'Contractor Work Phone', 1, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'UC', 0, 0);
 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
  
--Cell Phone for ConstructionProjectBudget---------------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionProjectBudget'), 'ContractorCellPhone',10, 'Contractor Cell Phone', 1, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 1, 0, 0, 1, 0, 0, 'UC', 0, 0);
 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');

--delete Inspectiondetails Associate under ConstructionBudgetItem 
delete from associate_presenter_attributes where associate_definition_id in (select associate_definition_id from associate_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionBudgetItem') and associate_name like 'InspectionDetails');
DELETE FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME='InspectionDetails' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionBudgetItem');

--Adding Inspection Schedule associate to ConstructionBudgetItem--------------
INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
  VALUES(ASSOCDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionBudgetItem'), 'InspectionSchedule', 1, 'Inspection Schedule',(select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where TYPE_NAME='InspectionSchedule'),0,1,0,0,0,1,0,1,0,0,0,null,0,0,1,1,0,'U',null,0);
  
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'ACCOUNT_CREATED');
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'DEFAULT');
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(ASSOCIATE_DEFINITION_ID) from ASSOCIATE_DEFINITION), 0, 0, 1, 0, 'INQUIRY');

--Changing Property Name from Project Phase to Project Segment
 UPDATE PROPERTY_DEFINITION SET PROPERTY_NAME ='ProjectSegment',PROPERTY_DESCRIPTION='Project Segment'  WHERE property_definition_id IN (SELECT PROPERTY_DEFINITION_ID FROM property_definition WHERE property_name LIKE 'ProjectPhase');

 --AmountCompleted for ConstructuionBudgetItem--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval,(select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionBudgetItem'), 'AmountCompleted',10, 'Amount Completed', 8, 0, 0, NULL, 0, 'com.vsoftcorp.finance.Money:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED');

--Percentage Completed for ConstructuionBudgetItem--------------
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN,INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES(PROPDEFID_SEQ.nextval, (select max(ENTITY_TYPE_DEFINITION_ID) from entity_type_definition where type_name like 'ConstructionBudgetItem'), 'PercentageCompleted',11, 'Percentage Completed', 4, 0, 0, NULL, 0, 'com.vsoftcorp.types.Percentage:{default={}}', 0, 0, 0, 0, 1, 0, 0, 'UC', 0, 0);

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'DEFAULT'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'INQUIRY'); 
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id) from property_definition), 0, 0, 0, 0, 'ACCOUNT_CREATED'); 

--Removing the ConstructionContractor properties
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'Code');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='Code' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'ContractorName');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='ContractorName' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'ContactPerson');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='ContactPerson' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'Address1');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='Address1' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'Address2');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='Address2' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'City');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='City' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'State');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='State' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'Zip');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='Zip' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');
delete from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'ConstructionContractor') and property_name like 'PhoneNumber');
DELETE FROM PROPERTY_DEFINITION WHERE  PROPERTY_NAME='PhoneNumber' AND ENTITY_TYPE_DEFINITION_ID IN (select entity_type_definition_id from entity_type_definition where type_name='ConstructionContractor');

--Deleting the ConstructionContractor entity
DELETE FROM ENTITY_TYPE_DEFINITION where TYPE_NAME like 'ConstructionContractor';

--Deleting the InspectionDetails entity
DELETE FROM ENTITY_TYPE_DEFINITION where TYPE_NAME like 'InspectionDetails';

--changing to InspectionSchedule entity property BudgetPercentageCompleted as read only 
UPDATE property_presenter_attributes SET editable =0 WHERE state_name LIKE 'DEFAULT' AND property_definition_id IN (SELECT PROPERTY_DEFINITION_ID FROM property_definition WHERE property_name LIKE 'BudgetPercentageCompleted');
UPDATE property_presenter_attributes SET editable =0 WHERE state_name LIKE 'ACCOUNT_CREATED' AND property_definition_id IN (SELECT PROPERTY_DEFINITION_ID FROM property_definition WHERE property_name LIKE 'BudgetPercentageCompleted');


 


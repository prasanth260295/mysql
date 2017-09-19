INSERT INTO ENTITY_TYPE_DEFINITION(ENTITY_TYPE_DEFINITION_ID, TYPE_NAME, TYPE_DESCRIPTION, ENTITY_TYPE_INSTANCE_CLASS, BASE_ENTITY_TYPE_DEF_ID, LOOKUP, SYSTEM, TEMPLATE)
  (select (select max(entity_type_definition_id)+1 from entity_type_definition), 'CoresoftProduct', 'Coresoft Product', 'com.vsoftcorp.loan.model.entities.CBTLoan', ENTITY_TYPE_DEFINITION_ID, 0, 0, NULL from ENTITY_TYPE_DEFINITION
  where type_name='LoanProduct');

INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (select max(entity_type_definition_id) from entity_type_definition), 'ProductCode', -1, 'Product Code', 1, 0, 0, NULL, 0, 'java.lang.String:{default={}}', 0, 0, 0, 1, 1, 1, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 1, 1, 'DEFAULT');
  INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 1, 1, 'ACCOUNT_CREATED');

  
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (select max(entity_type_definition_id) from entity_type_definition), 'CloseAccountOnZeroBalance', -1, 'Close Account On Zero Balance', 0, 0, 0, NULL, 0, 'java.lang.Boolean:{default={false=No,true=Yes}}', 0, 0, 0, 1, 1, 1, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 1, 0, 0, 1, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 1, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 1, 0, 0, 1, 'DEFAULT');
  
INSERT INTO PROPERTY_DEFINITION(PROPERTY_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, PROPERTY_NAME, PROPERTY_INDEX, PROPERTY_DESCRIPTION, VALUE_TYPE_DEFINITION_ID, DESCRIPTION_FIELD, DESCRIPTION_FIELD_OVERRIDEN, DEFAULT_VALUE, DEFAULT_VALUE_OVERRIDEN, VALID_VALUES, VALID_VALUES_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, PRIMARY_OVERRIDEN, PRIMARY)
  VALUES((select max(property_definition_id)+1 from property_definition), (select max(entity_type_definition_id) from entity_type_definition), 'ProductCategory', -1, 'Product Category', 2, 0, 0, NULL, 0, 'java.lang.Integer:{default={0=All,1=Consumer,2=Commercial}}', 0, 0, 0, 1, 1, 1, 0, NULL, 0, 0);
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 1, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select max(property_definition_id)  from property_definition), 0, 0, 1, 1, 'ACCOUNT_CREATED');

  
  
delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='RealEstateProperty') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='RealEstateProperty');

update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='RealEstateProperty');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='RealEstateProperty' ;


delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='BrokerageAccount') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='BrokerageAccount');


update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='BrokerageAccount');


delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='BrokerageAccount' ;


update entity_type_instance set ENTITY_TYPE_INST_CLASS_NAME='com.vsoftcorp.loan.model.entities.StockCollateralCode'
where type_name='StockCollateralCode' ;


delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='AcctsReceivableInventoryCollateralCode') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='AcctsReceivableInventoryCollateralCode');


update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='AcctsReceivableInventoryCollateralCode');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='AcctsReceivableInventoryCollateralCode' ;



delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='GSAonBusinessAssets') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='GSAonBusinessAssets');


update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='GSAonBusinessAssets');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='GSAonBusinessAssets' ;



delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='Equipment') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='Equipment');


update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='Equipment');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='Equipment' ;


delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='PersonalPropertyBusinessAssets') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='PersonalPropertyBusinessAssets');


update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='PersonalPropertyBusinessAssets');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='PersonalPropertyBusinessAssets' ;



delete from  ASSOCIATE_DEF_VALID_VALUES where ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID
 from ENTITY_TYPE_INSTANCE where TYPE_NAME='LifeInsuranceAnnuity') ;
delete from property  where ENTITY_TYPE_INSTANCE_ID in (
select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='LifeInsuranceAnnuity');

update  associate_definition set default_instance=null where default_instance in
(select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME='LifeInsuranceAnnuity');

delete from ENTITY_TYPE_INSTANCE  where TYPE_NAME='LifeInsuranceAnnuity' ;




 
--update  ENTITY_TYPE_DEFINITION  set TYPE_NAME='MunicipalsUnsecuredNonTaxable05',TYPE_DESCRIPTION='Municipals Unsecured - Non Taxable - 05' where TYPE_NAME='MunicipalUnsecured05';

--update  ENTITY_TYPE_DEFINITION  set TYPE_NAME='MunicipalsSecuredTaxable27',TYPE_DESCRIPTION='Municipals Secured - Taxable - 27' where TYPE_NAME='Insurance27';

--update  ENTITY_TYPE_DEFINITION  set TYPE_NAME='MunicipalSecuredNonTaxable29',TYPE_DESCRIPTION='Municipal Secured - Non Taxable - 29' where TYPE_NAME='MunicipalSecured29';

--Updating for Existing accounts

--update ENTITY_TYPE_INSTANCE set TYPE_NAME='MunicipalsUnsecuredNonTaxable05',TYPE_DESCRIPTION='Municipals Unsecured - Non Taxable - 05' where TYPE_NAME='MunicipalUnsecured05';
--
--update  ENTITY_TYPE_INSTANCE  set TYPE_NAME='MunicipalsSecuredTaxable27',TYPE_DESCRIPTION='Municipals Secured - Taxable - 27' where TYPE_NAME='Insurance27';
--
--update  ENTITY_TYPE_INSTANCE  set TYPE_NAME='MunicipalSecuredNonTaxable29',TYPE_DESCRIPTION='Municipal Secured - Non Taxable - 29' where TYPE_NAME='MunicipalSecured29';
--
--
--update PROPERTY set VALUE='java.lang.String:Municipals Unsecured - Non Taxable - 05' where PROPERTY_NAME='Description' and ENTITY_TYPE_INSTANCE_ID in 
--(select ENTITY_TYPE_INSTANCE_ID from  ENTITY_TYPE_INSTANCE where TYPE_NAME='MunicipalsUnsecuredNonTaxable05');
--
--
--update PROPERTY set VALUE='java.lang.String:Municipals Secured - Taxable - 27' where PROPERTY_NAME='Description' and ENTITY_TYPE_INSTANCE_ID in 
--(select ENTITY_TYPE_INSTANCE_ID from  ENTITY_TYPE_INSTANCE where TYPE_NAME='MunicipalsSecuredTaxable27');
--
--update PROPERTY set VALUE='java.lang.String:Municipal Secured - Non Taxable - 29' where PROPERTY_NAME='Description' and ENTITY_TYPE_INSTANCE_ID in 
--(select ENTITY_TYPE_INSTANCE_ID from  ENTITY_TYPE_INSTANCE where TYPE_NAME='MunicipalSecuredNonTaxable29');


---for product code 05

--delete from ASSOCIATE_DEF_VALID_VALUES where ASSOCIATE_DEFINITION_ID in (
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsUnsecuredNonTaxable05' ) and ASSOCIATE_NAME='CollateralCode' );
--
--delete from ASSOCIATE_PRESENTER_ATTRIBUTES  where ASSOCIATE_DEFINITION_ID in(
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsUnsecuredNonTaxable05' ) 
--and ASSOCIATE_NAME='CollateralCode') ;
-- 
--
--delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsUnsecuredNonTaxable05' ) and ASSOCIATE_NAME='CollateralCode' ;
--adding new callreport code

--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'CallReportCode', 'Call Report Code', 1, 'com.vsoftcorp.loan.model.entities.CallReportCode');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:All Other Loans');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:All Other Loans');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:1a5');
--
--
----Valid Instances of Unsecure Collateral Code 3 with collateral code 73
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Unsecured Municipal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Unsecured Municipal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:73');
--
--
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:1a5');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--property_name like 'Code' and value like 'java.lang.Integer:6');


-- Adding the Collateral code associate definition to MunicipalUnsecured05 product
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CollateralCode', 1, 'Collateral Code', 442, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'P', NULL, 0
--	from ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsUnsecuredNonTaxable05');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');

	-- Adding the Collateral code associate definition valid values.

--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:73');

--updating existing accounts 

--update UNIQUE_ASSOCIATE set VALUE_ENTITY_TYPE_INSTANCE_ID=(select ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:73') where ASSOCIATE_ID in 
--(select associate_id from associate where ENTITY_TYPE_INSTANCE_ID in (
--select entity_type_instance_id from entity_type_instance where type_name = 'MunicipalsUnsecuredNonTaxable05') and 
--associate_name like 'CollateralCode');



-- for product code 27

--delete from ASSOCIATE_DEF_VALID_VALUES where ASSOCIATE_DEFINITION_ID in (
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsSecuredTaxable27' ) and ASSOCIATE_NAME='CollateralCode' );
--
--delete from ASSOCIATE_PRESENTER_ATTRIBUTES  where ASSOCIATE_DEFINITION_ID in(
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsSecuredTaxable27' ) 
--and ASSOCIATE_NAME='CollateralCode') ;
-- 
--
--delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalUnsecured27' ) and ASSOCIATE_NAME='CollateralCode' ;

--Valid Instances of  Title Collateral Code  with collateral code 74

--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'TitleCollateralCode', 'Title Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.TitleCollateralCode');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Title Goods - Municipal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Title Goods - Municipal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:74');
--
--
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:1a5');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--property_name like 'Code' and value like 'java.lang.Integer:2');


-- Adding the Collateral code associate definition to MunicipalUnsecured05 product
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CollateralCode', 1, 'Collateral Code', 442, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'P', NULL, 0
--	from ENTITY_TYPE_DEFINITION where type_name = 'MunicipalsSecuredTaxable27');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');

	-- Adding the Collateral code associate definition valid values.
	
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'TitleCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:74');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'PropertyCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:12');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'PropertyCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:13');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'OtherCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:34');

--updating existing accounts 

--update UNIQUE_ASSOCIATE set VALUE_ENTITY_TYPE_INSTANCE_ID= null where ASSOCIATE_ID in 
--(select associate_id from associate where ENTITY_TYPE_INSTANCE_ID in (
--select entity_type_instance_id from entity_type_instance where type_name = 'MunicipalsSecuredTaxable27') and 
--associate_name like 'CollateralCode');


---Product Code 29

--delete from ASSOCIATE_DEF_VALID_VALUES where ASSOCIATE_DEFINITION_ID in (
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalSecuredNonTaxable29' ) and ASSOCIATE_NAME='CollateralCode' );

	
--delete from ASSOCIATE_PRESENTER_ATTRIBUTES  where ASSOCIATE_DEFINITION_ID in(
--select ASSOCIATE_DEFINITION_ID from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalSecuredNonTaxable29' ) 
--and ASSOCIATE_NAME='CollateralCode') ;
-- 
--
--delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
--(select  ENTITY_TYPE_DEFINITION_ID from  ENTITY_TYPE_DEFINITION where type_name = 'MunicipalSecuredNonTaxable29' ) and ASSOCIATE_NAME='CollateralCode' ;
--
---- Adding the Collateral code associate definition to MunicipalUnsecured05 product
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CollateralCode', 1, 'Collateral Code', 442, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'P', NULL, 0
--	from ENTITY_TYPE_DEFINITION where type_name = 'MunicipalSecuredNonTaxable29');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');

	-- Adding the Collateral code associate definition valid values.

--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'TitleCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:74');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'PropertyCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:12');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'PropertyCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:13');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'OtherCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:34');

--updating existing accounts 

--update UNIQUE_ASSOCIATE set VALUE_ENTITY_TYPE_INSTANCE_ID= null where ASSOCIATE_ID in 
--(select associate_id from associate where ENTITY_TYPE_INSTANCE_ID in (
--select entity_type_instance_id from entity_type_instance where type_name = 'MunicipalSecuredNonTaxable29') and 
--associate_name like 'CollateralCode');

























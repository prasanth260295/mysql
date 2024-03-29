
-- Unsecured Collateral Code Entity Type Definition created under Collateral Code
--INSERT INTO ENTITY_TYPE_DEFINITION(ENTITY_TYPE_DEFINITION_ID, TYPE_NAME, TYPE_DESCRIPTION, ENTITY_TYPE_INSTANCE_CLASS, BASE_ENTITY_TYPE_DEF_ID, LOOKUP, SYSTEM, TEMPLATE)
--  VALUES((select max(ENTITY_TYPE_DEFINITION_id) +1 from ENTITY_TYPE_DEFINITION), 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode', 442, 1, 0, NULL);
--
--
---- Collateral Type Instance created with code 6 and value Unsecured to be associated with unsecured collateral code.
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'CollateralType', 'Collateral Type', 1, 'com.vsoftcorp.loan.model.entities.CollateralType');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Unsecured');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.Integer:6');
--
---- Deleting existing instances of 68,69 which are created for other collateral code.
--
--delete from property where ENTITY_TYPE_INSTANCE_ID in (287,288,289,290);
--delete from UNIQUE_ASSOCIATE where ASSOCIATE_ID in (
--select ASSOCIATE_ID from ASSOCIATE where ENTITY_TYPE_INSTANCE_ID in (287,288,289,290));
--delete from associate where ENTITY_TYPE_INSTANCE_ID in (287,288,289,290);
--delete from ENTITY_TYPE_INSTANCE where ENTITY_TYPE_INSTANCE_ID in (287,288,289,290);
--
--
---- Valid Instances of Unsecure Collateral Code 1 with collateral code 67
--
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode');
--
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Unsecured - Personal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Unsecured - Personal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:67');
--
--	-- asssociate Call Report Code
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval,
-- ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:6c');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, 
--ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--property_name like 'Code' and value like 'java.lang.Integer:6');
--
--
--
--
--
--
---- Valid Instances of Unsecure Collateral Code 2 with collateral code 68
--
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Unsecured - Commercial');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Unsecured - Commercial');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:68');
--
--	-- asssociate Call Report Code
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:4a');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--property_name like 'Code' and value like 'java.lang.Integer:6');
--
---- Valid Instances of Unsecure Collateral Code 3 with collateral code 69
--
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Guaranty - Personal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Guaranty - Personal');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:69');
--
--	-- asssociate Call Report Code
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:6c');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--property_name like 'Code' and value like 'java.lang.Integer:6');
--
---- Valid Instances of Unsecure Collateral Code 4 with collateral code 70
--
--INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
--  VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'UnsecuredCollateralCode', 'Unsecured Collateral Code', 1, 'com.vsoftcorp.loan.model.entities.UnsecuredCollateralCode');
--
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'ShortDescription', 'java.lang.String:Guaranty - Commercial');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Guaranty - Commercial');
--INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
--  VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:70');
--
--	-- asssociate call report code
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CallReportCode')  and 
--property_name like 'Code' and value like 'java.lang.String:4a');
--
--	-- asssociate collateral type
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--  VALUES(ASSOCIATEID_SEQ.nextval, ENTITYTYPEINSTID_SEQ.currval, 'CollateralType', 'CollateralType', 'Collateral Type', 1);
--INSERT INTO UNIQUE_ASSOCIATE(ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCIATEID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'CollateralType')  and 
--	property_name like 'Code' and value like 'java.lang.Integer:6');
--
--
--
---- Defining new associate defintiion "Call report code" to  Loan Purpose Entity
--
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CallReportCode', 0, 'Call Report Code', 470, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'UC', NULL, 0 
--  from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID in (
--   select ENTITY_TYPE_DEFINITION_ID from ENTITY_TYPE_DEFINITION where type_name = 'LoanPurpose'));
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--
---- Adding an associate for existing instance of Loan Purpose
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE) 
--(select ASSOCIATEID_SEQ.nextval, ENTITY_TYPE_INSTANCE_ID, 'CallReportCode', 'CallReportCode', 'Call Report Code', 1 from ENTITY_TYPE_INSTANCE where TYPE_NAME like 'LoanPurpose');
--	-- adding the unique associate
--insert into UNIQUE_ASSOCIATE (ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID) 
--(select associate_id, null from associate where ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_id from ENTITY_TYPE_INSTANCE where TYPE_NAME like 
--'LoanPurpose' and associate_name like 'CallReportCode'));
--
--	-- updating the unique asscociate call report code value for 41,49 loan purpose codes
--update UNIQUE_ASSOCIATE set VALUE_ENTITY_TYPE_INSTANCE_ID = (select ENTITY_TYPE_INSTANCE_ID from PROPERTY where 
--PROPERTY_NAME like 'Code' and 
--value like 'java.lang.String:1a2' and 
--ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where type_name like 'CallReportCode')) where ASSOCIATE_ID in (
--select associate_id from associate where ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from PROPERTY where ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME like 'LoanPurpose') and value in ('java.lang.String:41', 'java.lang.String:49') and
--property_name like 'Code') and associate_name like 'CallReportCode');
--
--	-- updating the unique asscociate call report code value for 45 loan purpose codes
--update UNIQUE_ASSOCIATE set VALUE_ENTITY_TYPE_INSTANCE_ID = (select ENTITY_TYPE_INSTANCE_ID from PROPERTY where 
--PROPERTY_NAME like 'Code' and 
--value like 'java.lang.String:1a1' and 
--ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where type_name like 'CallReportCode')) where ASSOCIATE_ID in (
--select associate_id from associate where ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from PROPERTY where ENTITY_TYPE_INSTANCE_ID in (
--select ENTITY_TYPE_INSTANCE_ID from ENTITY_TYPE_INSTANCE where TYPE_NAME like 'LoanPurpose') and value like 'java.lang.String:45' and
--property_name like 'Code') and associate_name like 'CallReportCode');
--
--
--
---- Adding the Collateral code associate definition to MunicipalUnsecured05 product
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CollateralCode', 1, 'Collateral Code', 442, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'P', NULL, 0
--	from ENTITY_TYPE_DEFINITION where type_name = 'MunicipalUnsecured05');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--
--	-- Adding the Collateral code associate definition valid values.
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:67');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--   (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:68');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--   (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:69');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:70');
--
---- adding associate to Municipal Unsecured Loan
--
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--(select ASSOCIATEID_SEQ.nextval, ENTITY_TYPE_INSTANCE_ID, 'CollateralCode', 'CollateralCode', ' Collateral Code', 1 
--from ENTITY_TYPE_INSTANCE where TYPE_NAME like 'MunicipalUnsecured05');
--
--        -- adding the unique associate to associate of collateral Code to Municipal Unsecured Loan
--
--insert into UNIQUE_ASSOCIATE (ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--
--(select associate_id, null from associate where ENTITY_TYPE_INSTANCE_ID in (
--
--select entity_type_instance_id from entity_type_instance where type_name = 'MunicipalUnsecured05') and 
--associate_name like 'CollateralCode');
--
--
--
---- Adding the Collateral code associate definition to UnsecureLoan99 product
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  (select ASSOCDEFID_SEQ.nextval, ENTITY_TYPE_DEFINITION_ID, 'CollateralCode', 1, 'Collateral Code', 442, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 1, 0, 'P', NULL, 0
--	 from ENTITY_TYPE_DEFINITION where type_name = 'UnsecureLoan99');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'INQUIRY');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES(ASSOCDEFID_SEQ.currval, 0, 0, 1, 0, 'ACCOUNT_CREATED');
--
--	-- Adding the Collateral code associate definition valid values.
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:67');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--   (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:68');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--   (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:69');
--INSERT INTO ASSOCIATE_DEF_VALID_VALUES(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_INSTANCE_ID)
--  (select ASSOCDEFID_SEQ.currval, ENTITY_TYPE_INSTANCE_ID from property where entity_type_instance_id in (
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecuredCollateralCode')  and 
--	property_name like 'Code' and value like 'java.lang.String:70');
--
---- adding associate to  Unsecured Loan 99
--
--INSERT INTO ASSOCIATE(ASSOCIATE_ID, ENTITY_TYPE_INSTANCE_ID, ASSOCIATE_NAME, TYPE_NAME, TYPE_DESCRIPTION, ASSOCIATION_TYPE)
--(select ASSOCIATEID_SEQ.nextval, ENTITY_TYPE_INSTANCE_ID, 'CollateralCode', 'CollateralCode', ' Collateral Code', 1 
--from ENTITY_TYPE_INSTANCE where TYPE_NAME like 'UnsecureLoan99');
--
--        -- adding the unique associate to associate of collateral Code to Unsecured Loan 99
--
--insert into UNIQUE_ASSOCIATE (ASSOCIATE_ID, VALUE_ENTITY_TYPE_INSTANCE_ID)
--
--(select associate_id, null from associate where ENTITY_TYPE_INSTANCE_ID in (
--
--select entity_type_instance_id from entity_type_instance where type_name = 'UnsecureLoan99') and 
--associate_name like 'CollateralCode');

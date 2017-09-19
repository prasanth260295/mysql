CREATE TABLE OFAC_ALIASES(ID NUMBER, OFAC_DATA NUMBER, ALIAS VARCHAR2(100));
CREATE TABLE OFAC_SANCTIONING_TYPE(ID NUMBER, OFAC_DATA NUMBER, SANCTIONING_TYPE VARCHAR2(4));

ALTER TABLE TRANSACTION_FILE ADD FILE_NAME VARCHAR2(50);

--ALTER TABLE safe_deposit_contract ADD BENEFICIARY_INFORMATION VARCHAR2(500); 
--ALTER TABLE safe_deposit_contract ADD MULTIPLE_BENEFICIARY VARCHAR2(500); 
--ALTER TABLE safe_deposit_contract ADD SUCCESSOR_CUSTODIAN VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract ADD DATE_IF_TRUST DATE ;
--ALTER TABLE safe_deposit_contract ADD GRANTOR_NAMES VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract ADD WHO_IS_THE_SECREATARY VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract ADD WHO_IS_ASSO_SECREATARY VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract ADD HOW_IT_IS_TAXED VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract ADD HOW_LLC_IS_TAXED VARCHAR2(45);
--ALTER TABLE safe_deposit_contract ADD WHO_IS_DESIGNATED_MEMBER VARCHAR2(45);
--ALTER TABLE safe_deposit_contract ADD OWNERSHIP_DESIGNATION VARCHAR2(10) DEFAULT 0;

--ALTER TABLE safe_deposit_contract_aud ADD BENEFICIARY_INFORMATION VARCHAR2(500); 
--ALTER TABLE safe_deposit_contract_aud ADD MULTIPLE_BENEFICIARY VARCHAR2(500); 
--ALTER TABLE safe_deposit_contract_aud ADD SUCCESSOR_CUSTODIAN VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract_aud ADD DATE_IF_TRUST DATE;
--ALTER TABLE safe_deposit_contract_aud ADD GRANTOR_NAMES VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract_aud ADD WHO_IS_THE_SECREATARY VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract_aud ADD WHO_IS_ASSO_SECREATARY VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract_aud ADD HOW_IT_IS_TAXED VARCHAR2(45); 
--ALTER TABLE safe_deposit_contract_aud ADD HOW_LLC_IS_TAXED VARCHAR2(45);
--ALTER TABLE safe_deposit_contract_aud ADD WHO_IS_DESIGNATED_MEMBER VARCHAR2(45);
--ALTER TABLE safe_deposit_contract_aud ADD OWNERSHIP_DESIGNATION VARCHAR2(10) DEFAULT 0;

ALTER TABLE product_feature_instance MODIFY prod_feature_value varchar2(500); 

alter table INTERESTED_PARTY add IS_DBA NUMBER(1);
CREATE SEQUENCE UNIQUE_ID_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER NOCYCLE ;
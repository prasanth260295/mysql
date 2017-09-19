  CREATE TABLE LEGAL_ACTION_CODE
  (
  	LEGAL_ACTION_CODE 	NUMBER(5)  NOT NULL ENABLE,
    LEAGAL_ACTION_DESCRIPTION VARCHAR2(20),
    PRIMARY KEY (LEGAL_ACTION_CODE));
    
--adding new column to loan table.
   ALTER TABLE LOAN ADD LEGAL_ACTION_CODE_ID NUMBER(5); 
   

--Added script for collection officer displayed as normal field. 
   UPDATE associate_definition SET lazy=0 WHERE associate_definition_id IN (SELECT associate_definition_id FROM associate_definition WHERE associate_name LIKE 'CollectionOfficer');

   update entity_type_definition set system=0 where  type_name like 'MailCode';
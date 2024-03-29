CREATE SEQUENCE AT_TNXS_BATCH_UNQ_ID
START WITH 1 INCREMENT BY 1;
------------------------------------------------

ALTER TABLE TRANSACTION_POSTTODAY ADD AUTO_TRANSFER_ENTRY_ID VARCHAR2(20); 
ALTER TABLE TRANSACTION_POSTTODAY ADD AUTO_TXNS_SEQ_ID NUMBER(3,0);

ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD AUTO_RETRIVAL_COUNT VARCHAR2(20);
ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD MAX_AUTO_RETRY_COUNT VARCHAR2(20);
ALTER TABLE AUTOMATIC_TRANSFER_INSTRUCTION ADD NEXT_RETRIVALDATE DATE;

--added updated auto transfer ie adding two extra columns( AUTO_RETRIVAL_COUNT,MAX_AUTO_RETRY_COUNT, NEXT_RETRIVALDATE)
CREATE OR REPLACE VIEW AUTOMATIC_TRANSFER_VW ( AUTO_TRANS_UNIQUE_ID, SOURCE_ACCOUNT, SOURCE_ACC_NO, SOURCE_INST_NO, SOURCE_ACC_TYPE_ID, TARGET_ACCOUNT, TARGET_ACC_NO, TARGET_INST_NO, TARGET_ACC_TYPE_ID, TRANSFER_MONEY, TRANSFER_FREQUENCY, NUMBER_OF_TRANSFERS, START_DATE, END_DATE, AUTOMATIC_TRANSFER, IS_VARIABLE_AMOUNT, IS_ACTIVE,AUTO_RETRIVAL_COUNT,MAX_AUTO_RETRY_COUNT,NEXT_RETRIVALDATE,LAST_PROCESSED_DATE,WEEK_END_PROCESSING)
AS
  SELECT AUTO_TRANS_UNIQUE_ID,
    SOURCE_ACCOUNT,
    CASE
      WHEN source.ACCOUNT_CATEGORY='1'
      THEN
        (SELECT account_no FROM deposit WHERE account_id=at.source_account
        )
      ELSE
        (SELECT account_no
        FROM loan_account_vw
        WHERE loanaccount_id=at.source_account
        )
    END SOURCE_ACC_NO,
    SOURCE.INSTITUTION_ID SOURCE_INST_NO,
    SOURCE.contract_type_id SOURCE_ACC_TYPE_ID,
    TARGET_ACCOUNT,
    CASE
      WHEN target.ACCOUNT_CATEGORY='1'
      THEN
        (SELECT account_no FROM deposit WHERE account_id=at.target_account
        )
      ELSE
        (SELECT account_no
        FROM loan_account_vw
        WHERE loanaccount_id=at.target_account
        )
    END TARGET_ACC_NO,
    TARGET.INSTITUTION_ID TARGET_INST_NO,
    TARGET.contract_TYPE_ID TARGET_ACC_TYPE_ID,
    TRANSFER_MONEY,
    CASE
      WHEN instr(TRANSFER_FREQUENCY,'#')=0
      THEN TRANSFER_FREQUENCY
      ELSE SUBSTR(TRANSFER_FREQUENCY,0,instr(TRANSFER_FREQUENCY,'#')-1)
    END TRANSFER_FREQUENCY,
    NUMBER_OF_TRANSFERS,
    START_DATE,
    END_DATE,
    AUTOMATIC_TRANSFER,
    IS_VARIABLE_AMOUNT,
    IS_ACTIVE,
    AUTO_RETRIVAL_COUNT,
    MAX_AUTO_RETRY_COUNT,
    NEXT_RETRIVALDATE,
    AT.LAST_PROCESSED_DATE,
    AT.WEEK_END_PROCESSING
  FROM AUTOMATIC_TRANSFER_INSTRUCTION AT,
    ACCOUNT SOURCE,
    ACCOUNT TARGET
  WHERE AT.SOURCE_ACCOUNT=SOURCE.ACCOUNT_ID
  AND AT.TARGET_ACCOUNT  =TARGET.ACCOUNT_ID; 




-----------------------------------------
--Added scripts for changing the Responsibility type
--UPDATE PARTY_ROLE_TYPE SET ROLE_TYPE_NAME='CO_SIGNER' WHERE ROLE_TYPE_ID=15;
--UPDATE RESPONSIBILITY_TYPE_LOOKUP SET DESCRIPTION='CO_SIGNER' WHERE ID=2;

--UPDATE entity_type_definition SET TYPE_NAME='CoSigner',type_description='Co-Signer',entity_type_instance_class='com.vsoftcorp.loan.model.entities.CoSigner' where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name like 'CoMaker');
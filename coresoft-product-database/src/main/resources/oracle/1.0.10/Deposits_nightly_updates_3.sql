CREATE INDEX HOLD_PAY_ACC_IDX ON HOLD_PAYMENT(ACCOUNT_ID);

CREATE INDEX STOP_PAY_ACC_IDX ON STOP_PAYMENT_INSTRUCTION(ACCOUNT_ID);

alter TABLE ACH_CORESOFT_TRANCODE_MAP add DEBIT_OR_CREDIT varchar2(1);

create index itl_atid_iid_idx on INSTITUTION_TRANSCODE_LOOKUP(ACCOUNT_TYPE_ID,INSTITUTION_ID);
create index acc_atid_iid_idx on account(ACCOUNT_TYPE_ID,INSTITUTION_ID);
create index itl_tc_idx on INSTITUTION_TRANSCODE_LOOKUP(trans_code);
create index itl_et_idx on INSTITUTION_TRANSCODE_LOOKUP(entry_type);
create index act_ltc_idx on ACH_CORESOFT_TRANCODE_MAP(LEGACY_TRANCODE);
-- below script went to production
--alter table account_history_item add(entry_type_id number(15));

create index itl_tc_iid_idx on INSTITUTION_TRANSCODE_LOOKUP(TRANS_CODE,INSTITUTION_ID);

CREATE index tpt_inst_tcd_atid_idx on TRANSACTION_POSTTODAY(institution_id,trans_code,account_type_id);

create index LP_ETID_ATID_ps_IDX on LEDGER_POSTING_PARAMETERS(ENTRY_TYPE_ID,ACCOUNT_TYPE_ID,POSTING_SEQUENCE);

create index ET_INST_ID_uniqueid_IDX on ENTRY_TYPE(INSTITUTION_ID,to_number(ID),UNIQUE_ID);

ALTER TABLE ACCOUNT_HISTORY_ITEM ADD ( TRANS_ACCOUNT_NO varchar2(30) NULL, 
	TRANS_INSTITUTION_ID varchar2(30) NULL,	TRANS_ACCOUNT_ID varchar2(30) NULL ) ;

ALTER TABLE LEDGER_POSTING_PARAMETERS DROP ( POSTING_SEQUENCE ) CASCADE CONSTRAINT;

ALTER TABLE LEDGER_POSTING_PARAMETERS add IS_FORCE_PAYOUT NUMBER(1) DEFAULT 0;

alter table PAYMENT add (FEES varchar2(100));

alter table ELECTRONIC_CASH drop column FEE_AMOUNT;

create index par_acc_id_num_idex on PARTY_ACCOUNT_ROLE(to_number(account_id)) nologging;

alter table deposit_account modify FED_WITHHOLD_AMT_CURR_PERIOD number(20,5) ;
alter table deposit_account modify FED_WITHHOLD_AMT_YEAR_TO_DATE number(20,5) ;
--alter table deposit_account modify LAST_SERVICE_CHARGE number(20,5) ;

CREATE OR REPLACE VIEW DEPOSIT_ACCOUNT_VW AS
select A.ACCOUNT_NO,A.INSTITUTION_ID,A.PRODUCT_ID,A.ACCOUNT_CATEGORY, A.ACCOUNT_TYPE_ID,A.BUSINESS_DATE,
DA.* from ACCOUNT A,DEPOSIT_ACCOUNT DA where A.ACCOUNT_ID=DA.ACCOUNT_ID ;

CREATE OR REPLACE VIEW GL_TRANSACTION_POSTTODAY_VW AS
SELECT 	tp.account_id,
  	tp.account_number,
   	b.branch_id,
  	TP.INSTITUTION_ID,
  	TP.AMOUNT,
  	TP.TRANSACTION_ID,
  	TP.TRANS_CODE,
  	TP.DESCRIPTION,
  	TP.POST_STATUS,
  	TP.EFFECTIVE_DATE,
  	TP.ENTRY_DATE,
  	TP.SOURCE_NAME,
  	da.ACCOUNT_TYPE_ID,
  	TP.POST_DATE,
 	DA.ACCOUNT_CATEGORY,
 	P.PRODUCT_TYPE_ID
FROM 	transaction_posttoday tp,
 	deposit_account_vw da,
 	branch b,
 	PRODUCT_TYPE P
WHERE 	tp.account_number = da.account_no
 	AND tp.institution_id = da.institution_id
 	AND da.assigned_branch = b.unique_id
 	AND DA.PRODUCT_ID=P.UNIQUE_ID;


CREATE TABLE DEPOSIT_ACCOUNT_SUMMARY(ACCOUNT_ID NUMBER(15, 0) NOT NULL,
  PROCESSED_DATE DATE NOT NULL,
  ACCRUED_INTEREST NUMBER(15, 5),
  ACCRUED_INTEREST_DIFFERECE NUMBER(20, 5),
  OPENING_BALANCE NUMBER(15, 5),
  LEDGER_BALANCE NUMBER(15,5),
  INSTITUTION_ID NUMBER(30),
  ACCOUNT_NUMBER NUMBER(30));
  
create index DEP_ACC_SUM_ACC_ID_IDX on DEPOSIT_ACCOUNT_SUMMARY(ACCOUNT_ID) nologging;   

drop table DEPOSITS_LOANS ;

CREATE TABLE DEPOSITS_LOANS ( 
    ACCOUNT_NO    	varchar2(30) NULL,
    INSTITUTION_ID	varchar2(30) NULL,
    PARTY_ID      	varchar2(30) NULL,
    PARTY_NAME    	varchar2(400) NULL,
    PARTY_TYPE    	varchar2(30) NULL,
    SSN           	varchar2(30) NULL,
    TIN           	varchar2(30) NULL,
    LINE_1        	varchar2(100) NULL,
    LINE_2        	varchar2(100) NULL,
    LINE_3        	varchar2(50) NULL,
    CITY          	varchar2(50) NULL,
    STATE         	varchar2(50) NULL,
    COUNTRY       	varchar2(50) NULL,
    ZIP_1         	varchar2(30) NULL,
    AMOUNT        	NUMBER(20,5) NULL,
    OLD_ACCOUNT_NO	VARCHAR2(25) NULL 
    );  
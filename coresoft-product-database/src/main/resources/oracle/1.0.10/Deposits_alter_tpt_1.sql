alter table transaction_posttoday add routing_transit_number varchar2(9);
alter table DEPOSITS_LOANS add (APPLICATION_TYPE number(4) default 0);
alter table DEPOSITS_LOANS add (PRODUCT_CODE number(4) default 0);

alter table institution add NEXT_PROCESSING_DATE date;
alter table TRANSACTION_POSTTODAY add (OFAC_SCREENING_STATUS  NUMBER(1,0));

alter table deposit_account_day_summary add(time_unit number(2) default 4 not null);

delete from DEPOSIT_ACCOUNT_DAY_SUMMARY;
alter table DEPOSIT_ACCOUNT_DAY_SUMMARY drop constraint DEP_ACC_DAY_SUMMARY_PK;
alter table DEPOSIT_ACCOUNT_DAY_SUMMARY add day_start date ;
alter table DEPOSIT_ACCOUNT_DAY_SUMMARY add day_end date ;
alter table DEPOSIT_ACCOUNT_DAY_SUMMARY drop column account_day; 
alter table DEPOSIT_ACCOUNT_DAY_SUMMARY add ( constraint DEP_ACC_DAY_SUMMARY_PK primary key(ACCOUNT_ID,day_start,day_end));

alter table DEPOSIT_ACCOUNT_DAY_SUMMARY add (
				PTD_DEBIT_COUNT		NUMBER(10) default 0,
				PTD_DEBIT_AMOUNT	NUMBER(20,5) default 0,
				PTD_CREDIT_COUNT	NUMBER(10) default 0,
				PTD_CREDIT_AMOUNT	NUMBER(20,5) default 0,
				PTD_FED_TAX_WITHHELD	NUMBER(20,5) default 0,
				PTD_ATM_USED_COUNT		NUMBER(10) default 0,
				PTD_ATM_DEBIT_COUNT		NUMBER(10) default 0,
				PTD_ACH_DEBIT_COUNT		NUMBER(10) default 0,
				PTD_TRANSIT_ITEMS_COUNT NUMBER(10) default 0,
				PTD_CHECKS_COUNT NUMBER(10) default 0,
				PTD_AGR_SERVICE_CHARGE  	NUMBER(20,5) default 0,
				PTD_MAINT_SERVICE_CHARGE NUMBER(20,5) default 0,
				PTD_TIMES_OD NUMBER(10) default 0,
				PTD_TIMES_NSF NUMBER(10) default 0,
				PTD_NO_DAYS_OVERDRAWN NUMBER(10) default 0,
				PTD_INTEREST_PAID	NUMBER(20,5) default 0,		
				PTD_AGR_LEDGER_BALANCE	NUMBER(20,5) default 0,
				PTD_AGR_AVAILABLE_BALANCE 	NUMBER(20,5) default 0,
				PTD_AGR_CURRENT_BALANCE 	NUMBER(20,5) default 0);



update DEPOSIT_ACCOUNT_DAY_SUMMARY set YTD_NO_DAYS_OVERDRAWN = 0 where YTD_NO_DAYS_OVERDRAWN is null;
update DEPOSIT_ACCOUNT_DAY_SUMMARY set YTD_TIMES_OD = 0 where YTD_TIMES_OD is null;
update DEPOSIT_ACCOUNT_DAY_SUMMARY set YTD_TIMES_NSF = 0 where YTD_TIMES_NSF is null;

alter table TRANSACTION_POSTTODAY drop constraint TRANSACTION_POSTDAY_ANO_IID_FK;

alter table HOLD_PAYMENT add ACCOUNT_ID varchar2(30);

alter table STOP_PAYMENT_INSTRUCTION add ACCOUNT_ID varchar2(30);

create index hold_pay_acc on hold_payment(to_number(account_id)) nologging; 
create index stop_pay_inst_acc on stop_payment_instruction(to_number(account_id)) nologging;

--For CD updating number_days_penalty and grace_days columns in penalty_parameter
alter table PENALTY_PARAMETER add(temp varchar2(50));
update PENALTY_PARAMETER set temp = NUMBER_DAYS_PENALTY||':4';
alter table PENALTY_PARAMETER drop column NUMBER_DAYS_PENALTY;
alter table PENALTY_PARAMETER rename column temp to NUMBER_DAYS_PENALTY;

alter table PENALTY_PARAMETER add(temp varchar2(50));
update PENALTY_PARAMETER set temp = GRACE_DAYS||':4';
alter table PENALTY_PARAMETER drop column GRACE_DAYS;
alter table PENALTY_PARAMETER rename column temp to GRACE_DAYS;

ALTER TABLE DEPOSIT_ACCOUNT add LAST_ACTIVITY_DATE Date;
alter table deposit_account add PREVIOUS_BALANCE number(20,5);
alter table deposit_account add PREVIOUS_STMT_DATE date;

alter table LEDGER_POSTING_PARAMETERS rename COLUMN AFFECTS_GREATER_THAN_BAL to POST_IF_GREATER_THAN_BALANCE;
alter table ledger_posting_parameters add(post_if_new_account number default 0);
alter table ledger_posting_parameters add post_before_maturity_date number;

ALTER TABLE LEDGER_POSTING_PARAMETERS ADD 
(AFFECTS_AVAILABLE_BALANCE NUMBER(1), AFFECTS_CURRENT_BALANCE NUMBER(1), POSTED_TO NUMBER(1));

ALTER TABLE LEDGER_POSTING_PARAMETERS  DROP CONSTRAINT LEDPOSTING_IID_ATID_ETID_UK;


ALTER TABLE LEDGER_POSTING_PARAMETERS DROP CONSTRAINT LEDPOSTING_EID_ATID_FK;

--DROP INDEX LEDPOSTING_IID_ATID_ETID_UK;

ALTER TABLE LEDGER_POSTING_PARAMETERS add temp number(5);

ALTER TABLE LEDGER_POSTING_PARAMETERS drop column ENTRY_TYPE_ID;
ALTER TABLE LEDGER_POSTING_PARAMETERS drop column INSTITUTION_ID;

ALTER TABLE LEDGER_POSTING_PARAMETERS rename column temp to ENTRY_TYPE_ID;

create index DADS_ACC_ID_DAY_STRT_DAY_END on DEPOSIT_ACCOUNT_DAY_SUMMARY
(to_number(account_id),DAY_START,DAY_END) nologging;

create index ACC_HIST_VW_ACC_ID_POST_DATE on ACCOUNT_HISTORY_ITEM(to_number(account_id),post_date)
 nologging;
  
 ALTER TABLE "LEDGER_POSTING_PARAMETERS"
	ADD ( "IS_PARTING_FUND" NUMBER(3,0) DEFAULT 0 ) ;
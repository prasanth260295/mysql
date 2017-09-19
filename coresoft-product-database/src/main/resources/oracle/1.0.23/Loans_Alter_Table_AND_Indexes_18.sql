alter table LEDGER_POSTING_PARAMETERS ADD(IS_CHARGE_OFF NUMBER DEFAULT 0 NULL,
IS_PAYOFF_TRANSACTION NUMBER(1) DEFAULT 0 NUll);

create index LA_CONTRACT_ID_IDX on loan_account(CONTRACT_ID);

create index LADAY_TONUM_ACCTID_IDX on loan_account_day(TO_NUMBER("ACCOUNT_ID"));

create index LAE_ACCTID_ADJEVTID_IDX on loan_account_event(ACCOUNT_ID,ADJUSTED_EVENT_ID,REPLACEMENT_EVENT_ID,PARENT_EVENT_ID, EFFECTIVE_DATE);

create index LOAN_EVENT_EXID on loan_account_event(EXTERNAL_EVENT_ID);

create index LAHI_EVENTID_IDX on loan_account_history_item(EVENT_ID);

create index LAHI_TONUM_ACCTID_IDX on loan_account_history_item(TO_NUMBER("ACCOUNT_ID"));

create index LEVENT_MAINT_LOG_ENT_EVTID_IDX on loan_event_mainte_log_entries(EVENT_ID);

alter table loan_account modify(MISC_LOAN_FEE_INDICATOR  NVARCHAR2(20));

alter table Loan_ACCOUNT add NEXT_REVIEW_DATE DATE ;
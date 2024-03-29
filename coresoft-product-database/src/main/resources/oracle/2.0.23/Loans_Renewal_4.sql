--REM to add renewal_id in loan table
alter table loan add renewal_id number(20);

--REM to create table RENEWAL_HISTORY
CREATE TABLE RENEWAL_HISTORY(
     UNIQUE_ID NUMBER(20,0),
    RENEWAL_DATE DATE,
    RENEWAL_TERM NVARCHAR2(30),
    RENEWAL_PRICIPAL NUMBER(20,5),
    RENEWAL_BALANCE NUMBER(20,5),
    TOTAL_AMOUNT NUMBER(20,5),
    RENEWAL_MATURITY_DATE DATE,
    COMMENTS VARCHAR2(100 BYTE),
    RENEWAL_ID NUMBER(20,0));
    
--REM to create table renewal_new    
create table renewal_new(
 UNIQUE_ID NUMBER(20,0),
 NO_OF_RENEWALS NUMBER(20,0),
 LAST_RENEWED_PRINCIPAL NUMBER(20,0),
 LAST_RENEWED_INTEREST NUMBER(20,0),
 LAST_RENEWAL_DATE DATE);

--REM to create sequence RENEWAL_HIS_UID_SEQ  
CREATE SEQUENCE RENEWAL_HIS_UID_SEQ START WITH 1;

--REM to create sequence RENEWAL_UID_SEQ  
CREATE SEQUENCE RENEWAL_UID_SEQ START WITH 1;

--REM START LOAN_RENEWAL_EVENT
  CREATE TABLE LOAN_RENEWAL_EVENT 
   ("EVENT_ID" NUMBER(20,0) NOT NULL ENABLE, 
	"NEW_LOAN_TERM" VARCHAR2(50),
	"NEW_PRINCIPAL"	NUMBER(20,5) DEFAULT 0,
	"OUTSTANDING_PRINCIPAL" NUMBER(20,5) DEFAULT 0,
	"PAST_DUES" NUMBER(20,5) DEFAULT 0,
	"LATE_CHARGES" NUMBER(20,5) DEFAULT 0,	
	 CONSTRAINT "LOAN_RENEWAL_EVENT_PKEY" PRIMARY KEY ("EVENT_ID"),
  	 FOREIGN KEY ("EVENT_ID") REFERENCES "LOAN_ACCOUNT_EVENT" ("EVENT_ID") ENABLE
   );
--REM to insert event with id 43 in to event_type
insert into event_type values('43','Loan Renewal','REGULAR');

--REM to insert two trasaction codes one for reversal and another for regular 243 and 43 in to LOAN_EVENT_TYPE
Insert into LOAN_EVENT_TYPE ("EVENT_TYPE_ID","CORESOFT_EVENT_CODE","EVENT_GROUP","REVERSAL_EVENT_TYPE_ID","POSTING_ORDER","DESCRIPTION",
"DEBIT_OR_CREDIT","NEEDS_BALANCING","OFFSET_APPLICATION_TYPE","OFFSET_TRANCODE") values (43,'043',0,243,null,'Loan Renewal',null,0,null,null);
Insert into LOAN_EVENT_TYPE ("EVENT_TYPE_ID","CORESOFT_EVENT_CODE","EVENT_GROUP","REVERSAL_EVENT_TYPE_ID","POSTING_ORDER","DESCRIPTION",
"DEBIT_OR_CREDIT","NEEDS_BALANCING","OFFSET_APPLICATION_TYPE","OFFSET_TRANCODE") values (243,'243',1,43,null,'Loan Renewal Reversal','0',0,null,null);

--REM INSERTING into ENTRY_TYPE (if entries are already existing then make use of them other wise create new entries	
insert into entry_type values(8843,8843,(null),1,'Loan Renewal',2,(null),1,(null),(null),(null),0);

--REM INSERTING into LOAN_EVENT_ENTRY_TYPE_LINK

Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1801);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1822);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1823);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1824);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1825);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1832);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,1833);
Insert into LOAN_EVENT_ENTRY_TYPE_LINK ("EVENT_TYPE_ID","ENTRY_TYPE_ID") values (43,8843);

--REM INSERTING into LOAN_ENTRY_POSTING_RULE
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_LOAN_RENEWAL NUMBER(20) DEFAULT 0;
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFF_TIMES_RENEWED NUMBER(20) DEFAULT 0;
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID,AFFECTS_PRINCIPAL_BALANCE,AFFECTS_PRINCIPAL_DUE,AFFECTS_INTEREST_DUE,AFFECTS_ACCRUED_INTEREST,AFFECTS_ACCRUED_INT_NET, AFF_LOAN_RENEWAL,AFF_TIMES_RENEWED) VALUES(8843,1,1,1,1,1,1,1);


--REM INSERTING into LOAN_ENTRY_TYPE (if entries are already existing then make use of them other wise create new entries
insert into loan_entry_type values(8843,8843,8843,8843);

--REM to store the net_accrued_interest value in loan_renewal_event
 alter table loan_renewal_event add net_accrued_interest number(20,5);

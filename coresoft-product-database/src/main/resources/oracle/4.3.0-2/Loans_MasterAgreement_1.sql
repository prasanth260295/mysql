CREATE TABLE MASTER_LOAN_APPLICATION
  (
    "LOAN_APPLICATION_ID"       NUMBER(15,0),
    "CONTRACT_ID"               NUMBER(15,0),
    "GENERAL_LEDGER_ENTRIES_ID" NUMBER(15,0),
    CONSTRAINT "MASTER_LOAN_APP_ID_PK" PRIMARY KEY ("LOAN_APPLICATION_ID"));
   
    
--Regarding account number search in maintanance we change the datatype for Master agreement number.   
alter table MASTER_AGREEMENT modify(MASTER_AGREEMENT_NO varchar2(50));
    
--Java code which belongs to these two tran codes (8829,8839) is not yet merged from Coresoft 4.2 and hence the following tran codes are deleted from the Database.
--After Coresoft 4.2 bug fix code is merged into Coresoft 4.3 then we need not execute delete script. 
delete from loan_event_entry_type_link where entry_type_id='8829';
delete from entry_type where id='8829';
delete from loan_entry_type where entry_type_id='8829';
delete from loan_event_entry_type_link where entry_type_id='8839';
delete from entry_type where id='8839';
delete from loan_entry_type where entry_type_id='8839';

  --As part of Corsoft 4.2.1 bug fix following column is added to Loan table and unpdated the value.
--Alter table LOAN add (date_last_amortized date null);
Alter table LOAN add (DATE_FIRST_DELIQUENCY date null);
Alter table LOAN add (date_last_amortized date null);
 --Adding columns to effecting the field LoanAmount to LoanRenewal.
 UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_ORIG_LOAN_BALANCE=1 WHERE POSTING_RULE_ID='8843';

 insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (043,(select unique_id from entry_type where id='1816'));
 insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (243,(select unique_id from entry_type where id='1916'));
 
 --Adding column to Previous Loan Amount  
 ALTER TABLE LOAN_RENEWAL_EVENT ADD PREVIOUS_LOAN_AMOUNT VARCHAR2(30);
 ALTER TABLE RENEWAL_HISTORY ADD PREVIOUS_LOAN_AMOUNT VARCHAR2(30);
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (090,(SELECT unique_id FROM entry_type WHERE ID='1801'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (091,(SELECT unique_id FROM entry_type WHERE ID='1901'));


ALTER TABLE LOAN_PARTICIPATION ADD BASE_PARTICIPATION_ID NUMBER(10);
ALTER TABLE LOAN_PARTICIPATION ADD CURRENT_LOAN_AMOUNT NUMBER(20,5) DEFAULT 0;
ALTER TABLE LOAN_PARTICIPATION ADD CURR_SOLD_PERCENTAGE NUMBER(20,5) DEFAULT 0;

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (095,(SELECT unique_id FROM entry_type WHERE ID='1805'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (295,(SELECT unique_id FROM entry_type WHERE ID='1905'));
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_INTEREST_PAID=1 WHERE POSTING_RULE_ID=8895;
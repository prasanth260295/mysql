--escrow bal
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (063,(SELECT unique_id FROM entry_type WHERE ID='1903'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (263,(SELECT unique_id FROM entry_type WHERE ID='1803'));
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_ESCROW_BALANCE=1 WHERE POSTING_RULE_ID=8863;
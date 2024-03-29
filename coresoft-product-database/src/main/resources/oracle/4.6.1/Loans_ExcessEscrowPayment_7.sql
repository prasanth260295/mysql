 INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(004, '004', 0, 204, null, 'Escrow Excess Payment Event', '1');
INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(204, '204', 1, 004, null, 'Escrow Excess Payment Reversal', '1');
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
VALUES(8804, '8804', NULL, '0', 'EscrowExcessPaymentEvent', 2, NULL, '0');
ALTER TABLE LOAN_ENTRY_POSTING_RULE ADD AFFECTS_ESCROW_EXCESS_PYMNT NUMBER(20) DEFAULT 0;
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_ESCROW_EXCESS_PYMNT) VALUES(8804, 1);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) VALUES(8804,8804,8804,8804);
insert into loan_event_entry_type_link values(004,8804);

INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(006, '006', 0, 206, null, 'Escrow Excess Debit Adjustment', '1');
INSERT INTO loan_event_type(EVENT_TYPE_ID, CORESOFT_EVENT_CODE, EVENT_GROUP, REVERSAL_EVENT_TYPE_ID, POSTING_ORDER, DESCRIPTION, DEBIT_OR_CREDIT)
  VALUES(206, '206', 1, 006, null, 'Escrow Excess Debit Adjustment Reversal', '1');
INSERT INTO ENTRY_TYPE(UNIQUE_ID,ID,INSTITUTION_ID,DEBIT_OR_CREDIT,DESCRIPTION,ACCOUNT_CATEGORY,POSTING_SEQUENCE,IS_REVERSAL)
VALUES(8806, '8806', NULL, '0', 'EscrowExcessDebitAdjustment', 2, NULL, '0');
INSERT INTO LOAN_ENTRY_POSTING_RULE(POSTING_RULE_ID, AFFECTS_ESCROW_EXCESS_PYMNT) VALUES(8806, 1);
INSERT INTO LOAN_ENTRY_TYPE(ENTRY_TYPE_ID, ENTRY_NAME, REVERSAL_ENTRY_TYPE_ID, POSTING_RULE_ID) VALUES(8806,8806,8806,8806);
insert into loan_event_entry_type_link values(006,8806);

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (004,(SELECT unique_id FROM entry_type WHERE ID='1803'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (204,(SELECT unique_id FROM entry_type WHERE ID='1903'));
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_ESCROW_BALANCE=1 WHERE POSTING_RULE_ID=8804;

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (006,(SELECT unique_id FROM entry_type WHERE ID='1803'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (206,(SELECT unique_id FROM entry_type WHERE ID='1903'));
UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_ESCROW_BALANCE=1 WHERE POSTING_RULE_ID=8806;
--other fees for NSFFees Paid and LegalFeesPaid
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (098,(SELECT unique_id FROM entry_type WHERE ID='1904'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (298,(SELECT unique_id FROM entry_type WHERE ID='1804'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (086,(SELECT unique_id FROM entry_type WHERE ID='1904'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (286,(SELECT unique_id FROM entry_type WHERE ID='1804'));
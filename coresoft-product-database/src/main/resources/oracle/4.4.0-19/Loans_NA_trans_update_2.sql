UPDATE loan_entry_posting_rule SET aff_na_principal_balance=1 where posting_rule_id=8831;
UPDATE loan_entry_posting_rule SET affects_accrued_int_net=1 where posting_rule_id=8813;
UPDATE loan_entry_posting_rule SET aff_na_principal_balance=1 where posting_rule_id=8821;
UPDATE loan_entry_posting_rule SET aff_na_net=1 where posting_rule_id=8831;
UPDATE loan_entry_posting_rule SET aff_na_net=1 where posting_rule_id=8821;

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (021,(SELECT unique_id FROM entry_type WHERE ID='1867'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (221,(SELECT unique_id FROM entry_type WHERE ID='1967'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (021,(SELECT unique_id FROM entry_type WHERE ID='1864'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (221,(SELECT unique_id FROM entry_type WHERE ID='1964'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (031,(SELECT unique_id FROM entry_type WHERE ID='1967'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (231,(SELECT unique_id FROM entry_type WHERE ID='1867'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (021,(SELECT unique_id FROM entry_type WHERE ID='1868'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (221,(SELECT unique_id FROM entry_type WHERE ID='1968'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (031,(SELECT unique_id FROM entry_type WHERE ID='1968'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (231,(SELECT unique_id FROM entry_type WHERE ID='1868'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (021,(SELECT unique_id FROM entry_type WHERE ID='1871'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (221,(SELECT unique_id FROM entry_type WHERE ID='1971'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (031,(SELECT unique_id FROM entry_type WHERE ID='1971'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (231,(SELECT unique_id FROM entry_type WHERE ID='1871'));

UPDATE loan_entry_posting_rule SET aff_charge_off_principal=1 where posting_rule_id=8821;
UPDATE loan_entry_posting_rule SET aff_charge_off_principal=1 where posting_rule_id=8831;
UPDATE loan_entry_posting_rule SET aff_charge_off_net=1 where posting_rule_id=8821;
UPDATE loan_entry_posting_rule SET aff_charge_off_net=1 where posting_rule_id=8831;

---------Bankruptcy--- below script available in 4.5.1(loans_bankruptcy_serviceFee_update_1.sql,Loans_Rate_Change_Instruction_4.sql)
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (095,(SELECT unique_id FROM entry_type WHERE ID='1954'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (295,(SELECT unique_id FROM entry_type WHERE ID='1854'));


INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (095,(SELECT unique_id FROM entry_type WHERE ID='1980'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (295,(SELECT unique_id FROM entry_type WHERE ID='1880'));

INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (095,(SELECT unique_id FROM entry_type WHERE ID='1950'));
INSERT INTO LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) VALUES (295,(SELECT unique_id FROM entry_type WHERE ID='1850'));

update loan_entry_posting_rule set AFFECTS_SERVICE_FEE_NET=1 where posting_rule_id=8895;
update loan_entry_posting_rule set affects_service_fee_paid=1 where posting_rule_id=8895;
update loan_entry_posting_rule set affects_service_fee=1 where posting_rule_id=8895;
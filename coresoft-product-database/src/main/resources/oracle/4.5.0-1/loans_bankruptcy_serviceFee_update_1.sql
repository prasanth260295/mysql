insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (095,(select unique_id from entry_type where id='1954'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (295,(select unique_id from entry_type where id='1854'));

update loan_entry_posting_rule set AFFECTS_SERVICE_FEE_NET=1 where posting_rule_id=8895;

insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (095,(select unique_id from entry_type where id='1950'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (295,(select unique_id from entry_type where id='1850'));

update loan_entry_posting_rule set affects_service_fee_paid=1 where posting_rule_id=8895;

update loan_entry_posting_rule set affects_service_fee=1 where posting_rule_id=8895;
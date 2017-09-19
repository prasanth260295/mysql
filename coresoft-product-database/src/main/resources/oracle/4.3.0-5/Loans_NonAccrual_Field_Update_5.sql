--Added script for updating the CHARGE OFF NET in the Endday.
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (99,(select unique_id from entry_type where id='1869'));
insert into LOAN_EVENT_ENTRY_TYPE_LINK (EVENT_TYPE_ID, ENTRY_TYPE_ID) values (299,(select unique_id from entry_type where id='1969'));
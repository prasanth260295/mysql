--Accrued Interest Paid -- Credit & Debit Adjustment Scripts

insert into event_type values('29','Debit Adjustment - Accrued Interest','REGULAR');

insert into event_type values('39','Credit Adjustment - Accrued Interest','REGULAR');

insert into loan_event_type values(29,'029',0,229,(null),'Accrued Interest Paid - Debit Adjustment',0,0,(null),(null));

insert into loan_event_type values(229,229,1,29,(null),'Accrued Interest Paid - Debit Adjustment Reversal',1,0,(null),(null));

insert into loan_event_type values(39,'039',0,239,(null),'Accrued Interest Paid - Credit Adjustment',1,0,(null),(null));

insert into loan_event_type values(239,239,1,39,(null),'Accrued Interest Paid - Credit Adjustment Reversal',0,0,(null),(null));

insert into loan_entry_posting_rule(posting_rule_id,AFFECTS_DATE_LAST_ACTIVITY,AFFECTS_LAST_TRAN_AMOUNT)
values(8829,1,1);

insert into loan_entry_posting_rule(posting_rule_id,AFFECTS_DATE_LAST_ACTIVITY,AFFECTS_LAST_TRAN_AMOUNT)
values(8839,1,1);

insert into entry_type values(8829,8829,(null),1,'Accrued Interest - Debit Adjustment',2,(null),1,(null),(null),(null),0);

insert into entry_type values(8839,8839,(null),0,'Accrued Interest - Credit Adjustment',2,(null),1,(null),(null),(null),0);


insert into loan_entry_type values(8829,8829,8829,8829);

insert into loan_entry_type values(8839,8839,8839,8839);

insert into loan_event_entry_type_link values(29,1822);

insert into loan_event_entry_type_link values(29,1823);

insert into loan_event_entry_type_link values(29,1849);

insert into loan_event_entry_type_link values(29,8829);

insert into loan_event_entry_type_link values(39,1922);

insert into loan_event_entry_type_link values(39,1923);

insert into loan_event_entry_type_link values(39,1949);

insert into loan_event_entry_type_link values(39,8839);




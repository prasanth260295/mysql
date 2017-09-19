--ServiceFee Paid -- Credit & Debit Adjustment Scripts

insert into event_type values('28','Debit Adjustment - Service Fee','REGULAR');

insert into event_type values('38','Credit Adjustment - Service Fee','REGULAR');

insert into loan_event_type values(28,'028',0,228,(null),'Service Fee - Debit Adjustment',0,0,(null),(null));

insert into loan_event_type values(228,228,1,28,(null),'Service Fee - Debit Adjustment Reversal',1,0,(null),(null));

insert into loan_event_type values(38,'038',0,238,(null),'Service Fee - Credit Adjustment',1,0,(null),(null));

insert into loan_event_type values(238,238,1,38,(null),'Service Fee - Credit Adjustment Reversal',0,0,(null),(null));

insert into loan_entry_posting_rule(posting_rule_id,AFFECTS_DATE_LAST_ACTIVITY,AFFECTS_LAST_TRAN_AMOUNT,AFFECTS_SERVICE_FEE_PAID,AFFECTS_SERVICE_FEE_NET)
values(8828,1,1,1,1);

insert into loan_entry_posting_rule(posting_rule_id,AFFECTS_DATE_LAST_ACTIVITY,AFFECTS_LAST_TRAN_AMOUNT,AFFECTS_SERVICE_FEE_PAID,AFFECTS_SERVICE_FEE_NET)
values(8838,1,1,1,1);

insert into entry_type values(8828,8828,(null),1,'Service Fee - Debit Adjustment',2,(null),1,(null),(null),(null),0);

insert into entry_type values(8838,8838,(null),0,'Service Fee - Credit Adjustment',2,(null),1,(null),(null),(null),0);


insert into loan_entry_type values(8828,8828,8828,8828);

insert into loan_entry_type values(8838,8838,8838,8838);

insert into loan_event_entry_type_link values(28,100004);

insert into loan_event_entry_type_link values(28,100008);

insert into loan_event_entry_type_link values(28,8828);

insert into loan_event_entry_type_link values(38,100005);

insert into loan_event_entry_type_link values(38,100009);

insert into loan_event_entry_type_link values(38,8838);
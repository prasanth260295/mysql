--added script for effecting the Nonaccrual advance transaction and Charge off advance transaction.
update loan_entry_posting_rule set aff_na_date=1 where posting_rule_id=8873;
update loan_entry_posting_rule set AFF_CHARGE_OFF_DATE=1 where posting_rule_id=8875;
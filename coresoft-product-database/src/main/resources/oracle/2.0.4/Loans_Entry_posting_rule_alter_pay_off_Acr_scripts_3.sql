update Loan_Entry_posting_rule set Aff_pay_off_Acr_Int=0 where posting_rule_id in('51','52','50','58');

ALTER TABLE Loan_Entry_posting_rule MODIFY( Aff_pay_off_Acr_Int DEFAULT '0');



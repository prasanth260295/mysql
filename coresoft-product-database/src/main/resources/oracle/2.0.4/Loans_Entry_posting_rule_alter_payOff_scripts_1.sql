update Loan_Entry_posting_rule set AFF_PAY_OFF_DAILY_ACCURAL=0 where posting_rule_id in('51','52','50','58');

ALTER TABLE Loan_Entry_posting_rule MODIFY( AFF_PAY_OFF_DAILY_ACCURAL DEFAULT '0');

update property_definition set 
valid_values='java.lang.Integer:{default={0=Always Post,1=Reject if A/C is PrePaid by More Than Max Pre Payment Count}}'
where property_name='RejCurtonPrepaidAccinBatchProcesing' ;



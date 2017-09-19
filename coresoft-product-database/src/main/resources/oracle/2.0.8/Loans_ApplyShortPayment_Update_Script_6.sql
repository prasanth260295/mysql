update property_definition set VALID_VALUES='java.lang.Integer:{default={0=To LateCharge Curtailement,2=To Partial Payment}}' where property_name='ApplyShortPaymentTo' and 
Entity_type_definition_id in (select Entity_type_definition_id from Entity_type_definition where type_name='LoanRepayment');

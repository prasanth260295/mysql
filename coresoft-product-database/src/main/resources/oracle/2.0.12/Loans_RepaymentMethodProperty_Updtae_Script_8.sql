update property_definition set valid_values='java.lang.Integer:{default={0=Principal Plus Interest,1=Payment Includes Interest,
2=Interest Only - Principal due at maturity,3=Single Payment,4=Principal Only - Interest due at maturity,5=Rule of 78''s,
6=Alternate Payment Schedule,7=Irregular Payment Schedule,8=Interest Plus Percentage Of Balance}}' where entity_type_definition_id
in(select entity_type_definition_id from entity_type_definition where type_name='LoanRepayment') and property_name='RepaymentMethod';

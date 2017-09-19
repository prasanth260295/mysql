UPDATE PROPERTY_PRESENTER_ATTRIBUTES SET HIDDEN=1,HIDDEN_OVERRIDEN=1 WHERE PROPERTY_DEFINITION_ID 
IN (SELECT PROPERTY_DEFINITION_ID FROM PROPERTY_DEFINITION WHERE PROPERTY_NAME ='LoanAutoPayOff');

update associate_presenter_attributes set hidden=1 where associate_definition_id=
(select associate_definition_id from associate_definition where associate_name ='NewSchedulePayment' and 
entity_type_definition_id = (select entity_type_definition_id from entity_type_definition where type_name='LoanRepayment'));

update associate_presenter_attributes set hidden=1 where associate_definition_id=
(select associate_definition_id from associate_definition where associate_name ='NewInterestRate' and 
entity_type_definition_id = (select entity_type_definition_id from entity_type_definition where type_name='VariableLoanInterest'))
--CreditLifeAhInsurance associate update

update associate_definition set INHERITED=0 where associate_name='InsuranceCompany' 
and Entity_type_definition_id =(select Entity_type_definition_id from Entity_type_definition 
where type_name='CreditLifeAHInsurance');


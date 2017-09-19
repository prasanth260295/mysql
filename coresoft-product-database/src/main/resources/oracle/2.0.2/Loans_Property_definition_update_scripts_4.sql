update property_definition set valid_values_overriden='1' where entity_type_definition_id in(select entity_type_definition_id from 
entity_type_definition where type_name='DiscountedInterestCalculation') and property_name='InterestBasis';

update property_definition set value_type_definition_id='1' where entity_type_definition_id in(
select entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow') and property_name='PolicyNumber';

update property_definition set default_value='java.lang.Integer:1' where entity_type_definition_id in(select entity_type_definition_id 
from entity_type_definition where type_name='InsuranceEscrow') and property_name='EscrowType';

delete from property_presenter_attributes where property_definition_id in(
select property_definition_id from property_definition where property_name='PastDueDaysToStopEscrowDisbursement');

delete from property_definition where property_name='PastDueDaysToStopEscrowDisbursement';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='InsuranceEscrow') and property_name='DisbursementAmount') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='InsuranceEscrow') and property_name='DisbursementAmount') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='InsuranceEscrow') and property_name='FirstDisbursementDate') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='InsuranceEscrow') and property_name='FirstDisbursementDate') and state_name='ACCOUNT_CREATED';
 
update property_presenter_attributes set editable='1' where property_definition_id in( select property_definition_id from property_definition 
where entity_type_definition_id in( select entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')
and property_name='DistributionFrequency') and state_name='DEFAULT';
 
update property_presenter_attributes set editable='1' where property_definition_id in( select property_definition_id from property_definition 
where entity_type_definition_id in( select entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')
and property_name='DistributionFrequency') and state_name='ACCOUNT_CREATED';
 
update associate_definition set multiplicity='1' where entity_type_definition_id in(select entity_type_definition_id 
from entity_type_definition where type_name='ExternalAgency');

update property_definition set mandatory='1',category='U' where property_name='EscrowDisbursementProcess' and 
entity_type_definition_id in(select entity_type_definition_id from entity_type_definition where type_name='EscrowDetail'); 

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='EscrowDisbursementLastYear' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='DEFAULT';

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='EscrowDisbursementLastYear' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='EscrowDisbursementLastYear' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='INQUIRY';

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='AllowOverdrawonEscrowAccount' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='DEFAULT';

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='AllowOverdrawonEscrowAccount' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden='0' where property_definition_id in(select property_definition_id from 
property_definition where property_name='AllowOverdrawonEscrowAccount' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='InsuranceEscrow')) and state_name='INQUIRY';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where property_name='FundIncludeInBalance' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='EscrowDetail')) and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where property_name='FundIncludeInBalance' and entity_type_definition_id in(select 
entity_type_definition_id from entity_type_definition where type_name='EscrowDetail')) and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AdjustmentRateCapIncrease') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AdjustmentRateCapIncrease') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AdjustmentRateCapDecrease') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AdjustmentRateCapDecrease') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='LifetimeRateCapIncrease') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='LifetimeRateCapIncrease') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='LifetimeRateCapDecrease') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='LifetimeRateCapDecrease') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AnnualRateCapDown') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AnnualRateCapDown') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AnnualRateCapUp') and state_name='DEFAULT';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='VariableType') and property_name='AnnualRateCapUp') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='RateAdjustment') and property_name='RoundingMethod') and state_name='DEFAULT';

update property_presenter_attributes set hidden='0',editable='1' where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='RateAdjustment') and property_name='RoundingMethod') and state_name='ACCOUNT_CREATED';
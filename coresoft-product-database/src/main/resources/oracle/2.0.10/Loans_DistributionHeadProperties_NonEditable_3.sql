update property_presenter_attributes set editable=0 where property_definition_id in(select property_definition_id from 
property_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition 
where type_name='DistributionHead'));
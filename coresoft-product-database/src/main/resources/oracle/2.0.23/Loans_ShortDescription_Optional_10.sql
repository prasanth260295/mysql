--Short Description field as non mandatory for the Entities CollateralCode, LoanPurpose and CallReportCode

update  property_definition set mandatory=0 where Property_name='ShortDescription' and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name='CollateralCode');
update  property_definition set mandatory=0 where property_name='ShortDescription' and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name='LoanPurpose');
update  property_definition set mandatory=0 where Property_name='ShortDescription' and entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name='CallReportCode');
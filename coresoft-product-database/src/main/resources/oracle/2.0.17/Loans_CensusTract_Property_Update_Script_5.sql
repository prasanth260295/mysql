--Update datatype and description of property CensusTrack. 

update property_definition set VALUE_TYPE_DEFINITION_ID=1,VALID_VALUES='java.lang.String:{default={}}',PROPERTY_DESCRIPTION='Census Tract'
where property_name='CensusTrack' and entity_type_definition_id in(select entity_type_definition_id from
entity_type_definition where type_name in('CollateralProperty'));
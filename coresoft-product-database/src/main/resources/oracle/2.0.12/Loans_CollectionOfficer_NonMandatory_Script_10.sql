update associate_definition set lazy=1 where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition
where type_name='LoanContract') and associate_name='CollectionOfficer';

--hiding description for other liens.
update property_definition SET description_field=0 WHERE property_name LIKE 'TypeLien';
update property_definition SET description_field=0 WHERE property_name LIKE 'Company';
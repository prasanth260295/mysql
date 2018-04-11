UPDATE property_definition SET default_value='java.lang.Integer:12' where property_definition_id in(
select property_definition_id from property_definition where property_name like 'PaymentFrequency' and entity_type_definition_id in(
select entity_type_definition_id from entity_type_definition where type_name like 'SinglepaySchedule'));
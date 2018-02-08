update property set value='java.lang.String:Email All' where property_name='Description' and entity_type_instance_id in (
select entity_type_instance_id from property where property_name='Code' and value='java.lang.String:1' and 
entity_type_instance_id in (
select entity_type_instance_id from entity_type_instance where type_name like 'MailOption'));

update property set value='java.lang.String:Do not Email' where property_name='Description' and entity_type_instance_id in (
select entity_type_instance_id from property where property_name='Code' and value='java.lang.String:2' and 
entity_type_instance_id in (
select entity_type_instance_id from entity_type_instance where type_name like 'MailOption'));

update property set value='java.lang.String:EMail only notices' where property_name='Description' and entity_type_instance_id in (
select entity_type_instance_id from property where property_name='Code' and value='java.lang.String:3' and 
entity_type_instance_id in (
select entity_type_instance_id from entity_type_instance where type_name like 'MailOption'));

update property set value='java.lang.String:EMail only statements' where property_name='Description' and entity_type_instance_id in (
select entity_type_instance_id from property where property_name='Code' and value='java.lang.String:4' and 
entity_type_instance_id in (
select entity_type_instance_id from entity_type_instance where type_name like 'MailOption'));
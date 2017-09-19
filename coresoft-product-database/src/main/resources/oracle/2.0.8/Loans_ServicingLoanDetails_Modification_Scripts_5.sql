update property_definition set mandatory=0 where entity_type_definition_id in(select entity_type_definition_id 
 from entity_type_definition where type_name='ServicingLoanDetails') and property_name='SoldDate';
 
 delete property_presenter_attributes where property_definition_id in(select property_definition_id from property_definition 
 where entity_type_definition_id in(select entity_type_definition_id  from entity_type_definition where type_name='ServicingLoanDetails') 
 and property_name='ServicingFeeMTD');
 
 delete property_presenter_attributes where property_definition_id in(select property_definition_id from property_definition 
 where entity_type_definition_id in(select entity_type_definition_id  from entity_type_definition where type_name='ServicingLoanDetails') 
 and property_name='ServicingFeeYTD');
 
 delete property_presenter_attributes where property_definition_id in(select property_definition_id from property_definition 
 where entity_type_definition_id in(select entity_type_definition_id  from entity_type_definition where type_name='ServicingLoanDetails') 
 and property_name='ServicingFeeLTD');
 
 delete property_definition where entity_type_definition_id in(select entity_type_definition_id 
 from entity_type_definition where type_name='ServicingLoanDetails') and property_name='ServicingFeeMTD';
 
 delete property_definition where entity_type_definition_id in(select entity_type_definition_id 
 from entity_type_definition where type_name='ServicingLoanDetails') and property_name='ServicingFeeYTD';
 
 delete property_definition where entity_type_definition_id in(select entity_type_definition_id 
 from entity_type_definition where type_name='ServicingLoanDetails') and property_name='ServicingFeeLTD';
 
 update associate_definition set mandatory=0 where entity_type_definition_id in(select entity_type_definition_id 
 from entity_type_definition where type_name='ServicingLoanDetails');
update associate_definition set multiplicity=1 where associate_name like 'PastDueNoticeSchedule';

update property_definition set description_field=1 where entity_type_definition_id 
in (select entity_type_definition_id from ENTITY_TYPE_DEFINITION where TYPE_NAME like 'Investor') and property_name='InvestorID';

update property_definition set description_field=1 where entity_type_definition_id 
in (select entity_type_definition_id from ENTITY_TYPE_DEFINITION where TYPE_NAME like 'Investor') and property_name='InvestorName';

update property_definition set description_field=1 where entity_type_definition_id 
in (select entity_type_definition_id from ENTITY_TYPE_DEFINITION where TYPE_NAME like 'PastDuePeriod') and property_name='Period';

update associate_presenter_attributes set hidden=1  where associate_definition_id in (
select associate_definition_id from associate_definition where associate_name like 'CallReportCode'
and entity_type_definition_id in 
(select entity_type_definition_id from entity_type_definition where type_name like 'LoanPurpose')); 
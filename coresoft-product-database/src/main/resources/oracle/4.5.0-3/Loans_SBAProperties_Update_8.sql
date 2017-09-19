UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'LastReportingDate') and state_name like 'ACCOUNT_CREATED';
UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'LastReportingDate') and state_name like 'DEFAULT';
UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'NextReportingDate') and state_name like 'ACCOUNT_CREATED';
UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'NextReportingDate') and state_name like 'DEFAULT';
UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'SBA1502ReportingRequired') and state_name like 'DEFAULT';
UPDATE property_presenter_attributes SET editable=1 WHERE property_definition_id IN(
select property_definition_id from property_definition where property_name like 'SBA1502ReportingRequired') and state_name like 'ACCOUNT_CREATED';
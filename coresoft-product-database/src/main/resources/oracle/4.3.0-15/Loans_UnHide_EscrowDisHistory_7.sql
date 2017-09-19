update associate_presenter_attributes set hidden=0 where associate_definition_id in
(select associate_definition_id from associate_definition where associate_name='DisbursmentHistory');
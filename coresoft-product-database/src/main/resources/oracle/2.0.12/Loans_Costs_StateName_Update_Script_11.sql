update associate_presenter_attributes set EDITABLE=1 where associate_definition_id in(select associate_definition_id 
from associate_definition where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition
where type_name='DeferredIncomeExpense') and associate_name='Costs') and state_name='DEFAULT';
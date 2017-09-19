delete from PROPERTY_PRESENTER_ATTRIBUTES where PROPERTY_DEFINITION_ID in(select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION 
where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition where type_name='RateAdjustment') 
and PROPERTY_NAME='PaymentAdjustmentFirstPeriod');

delete  from PROPERTY_PRESENTER_ATTRIBUTES where PROPERTY_DEFINITION_ID in(select PROPERTY_DEFINITION_ID from PROPERTY_DEFINITION 
where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition where type_name='RateAdjustment') 
and PROPERTY_NAME='PaymentAdjustmentSubsequentperiod');

delete from PROPERTY_DEFINITION where entity_type_definition_id in(select entity_type_definition_id from entity_type_definition
where type_name='RateAdjustment') and PROPERTY_NAME='PaymentAdjustmentFirstPeriod';

delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID in(select entity_type_definition_id from entity_type_definition
where type_name='RateAdjustment') and PROPERTY_NAME='PaymentAdjustmentSubsequentperiod';

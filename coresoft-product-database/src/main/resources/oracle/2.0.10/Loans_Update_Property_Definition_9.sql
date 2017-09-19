--To update property_definition table columns (Changing RoundingFactor datatype from Percentage to InterestRate)
update property_definition set VALUE_TYPE_DEFINITION_ID=10,DEFAULT_VALUE='com.vsoftcorp.common.InterestRate:'||replace(DEFAULT_VALUE,'com.vsoftcorp.types.Percentage:')||'#YEAR:1',VALID_VALUES='com.vsoftcorp.common.InterestRate:{default={}}' 
where property_name='RoundingFactor' and entity_type_definition_id in 
(select entity_type_definition_id from entity_type_definition where type_name in ('RateAdjustment','ARMType','VariableType'));
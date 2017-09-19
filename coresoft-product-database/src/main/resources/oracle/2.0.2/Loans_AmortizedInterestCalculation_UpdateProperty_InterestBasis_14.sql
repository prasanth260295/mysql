update property_definition set VALID_VALUES='java.lang.Integer:{default={0=Actual/365 Basis,1=Actual/366 Basis,2=Actual/364 Basis,3=Actual/360 Basis,4=30/360 Basis-Amortized,5=Rule of 78''s,6=Actual/Actual Basis - Amortized,7=Actual/Actual Basis,8=30/360 Basis-Simple}}' where PROPERTY_DEFINITION_ID in 
(select PROPERTY_DEFINITION_ID from property_definition where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'AmortizedInterestCalculation')) 
and PROPERTY_NAME='InterestBasis';
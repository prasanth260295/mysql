--To update property_name and property_description fields from value LifetimeRateCapDecrease to FloorRate  and
--from value LifetimeRateCapIncreaseand to CeilingRate in property_definition table

--The below commented move to mbs based on requirement
--update property_definition set PROPERTY_NAME='FloorRate',PROPERTY_DESCRIPTION='FloorRate' where property_name = 'LifetimeRateCapDecrease';
--update property_definition set PROPERTY_NAME='CeilingRate',PROPERTY_DESCRIPTION='CeilingRate'  where property_name = 'LifetimeRateCapIncrease';

--To update spell mistake
update property_definition set PROPERTY_DESCRIPTION='Reject Curtailment on Pastdue Acc in Batch Processing' where PROPERTY_DESCRIPTION = 'Rejext Curtailment on Pastdue Acc in Batch Procesing';
update property_definition set PROPERTY_DESCRIPTION='Reject Curtailment on Prepaid Acc in Batch Processing' where PROPERTY_DESCRIPTION = 'Rejext Curtailment on Prepaid Acc in Batch Procesing';
--To update default values for property BalToUseforMaxLateChargeperforLife
update property_definition set VALID_VALUES='java.lang.Integer:{default={0=Principal Balance,1=Original Loan Amount}}' where PROPERTY_NAME = 'BalToUseforMaxLateChargeperforLife';


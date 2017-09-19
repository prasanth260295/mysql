update  property_presenter_attributes set hidden=0 ,EDITABLE =1 where property_definition_id in
 (select property_definition_id from property_definition  where property_name='IncludeAHDue' ) and STATE_NAME='DEFAULT';
 
update  property_presenter_attributes set hidden=0 ,EDITABLE =1 where property_definition_id in
 (select property_definition_id from property_definition  where property_name='IncludeCreditLifeDue' ) and STATE_NAME='DEFAULT';
 
update  property_presenter_attributes set hidden=0 ,EDITABLE =1 where property_definition_id in
 (select property_definition_id from property_definition  where property_name='MaxLateChargeBasis' ) and STATE_NAME='DEFAULT';
 
update  property_presenter_attributes set hidden=0 ,EDITABLE =1 where property_definition_id in
 (select property_definition_id from property_definition  where property_name='MaxLateChargePercentageforLife' ) and STATE_NAME='DEFAULT';
 
 
update  property_presenter_attributes set hidden=0 ,EDITABLE =1 where property_definition_id in
  (select property_definition_id from property_definition  where property_name='BalToUseforMaxLateChargeperforLife' ) and STATE_NAME='DEFAULT';

update property_definition set Mandatory=1 where property_name='NumberofCoupons';
  
update property_definition set valid_values='java.lang.Boolean:{default={true=Yes, false=No}}' where property_name='AllowOverdrawonEscrowAccount';

update property_definition set valid_values='java.lang.Boolean:{default={true=Yes, false=No}}' where property_name='EscrowRefundonPayoff';

update property_definition set value_type_definition_id='1' where property_name='EscrowAccountingAccountNumber';

update property_definition set value_type_definition_id='1' where property_name='EscrowAccountingInstitutionId';

update property_definition set valid_values='com.vsoftcorp.time.Date:{default={}}' where property_name='LastEscrowAnalysisProcessedDate';

update property_definition set valid_values='java.lang.Integer:{default={1=MANUAL,0=AUTOMATIC}}' where property_name='EscrowAnalysisProcess';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='SurplusTolerance') and state_name='DEFAULT';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='SurplusTolerance') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='SurplusTolerance') and state_name='INQUIRY';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='EscrowAnalysisLeadPeriod') and state_name='DEFAULT';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='EscrowAnalysisLeadPeriod') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='EscrowAnalysisLeadPeriod') and state_name='INQUIRY';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='EscrowAnalysisProcess') and state_name='DEFAULT';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='EscrowAnalysisProcess') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='MaxPastDuePaymentsToStopProjection') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='DeficiencyTolerance') and state_name='ACCOUNT_CREATED';

update property_presenter_attributes set hidden=0 where property_definition_id in(
select property_definition_id from property_definition where property_name='ShortageTolerance') and state_name='ACCOUNT_CREATED';

update associate_definition set associate_type_definition_id=(select entity_type_definition_id from entity_type_definition where type_name='PropertyCollateralCode') where 
associate_name='CollateralCode' and entity_type_definition_id=(select entity_type_definition_id from entity_type_definition where type_name='CollateralProperty');




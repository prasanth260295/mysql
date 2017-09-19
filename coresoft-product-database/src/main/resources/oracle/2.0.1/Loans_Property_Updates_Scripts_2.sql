
update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'EscrowType') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'EscrowType') and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'Status') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'Status') and state_name = 'DEFAULT';


update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'ForcedInsurancePolicy') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'ForcedInsurancePolicy') and state_name = 'DEFAULT';


update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'EscrowDisbursementProcess') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='InsuranceEscrow') and property_name like 'EscrowDisbursementProcess') and state_name = 'DEFAULT';



update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'EscrowType') and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'EscrowType') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'DateLastPremiumPaid') and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'DateLastPremiumPaid') and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'NextDisbursementDate') and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 , editable_overriden= 1 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='EscrowOther') and PROPERTY_NAME like 'NextDisbursementDate') and state_name = 'ACCOUNT_CREATED';



update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='EscrowType')) and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='EscrowType')) and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='DateLastPremiumPaid')) and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='DateLastPremiumPaid')) and state_name = 'ACCOUNT_CREATED';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='NextDisbursementDate')) and state_name = 'DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1 where property_definition_id in (select PROPERTY_DEFINITION_ID from property_presenter_attributes where property_definition_id in (select property_definition_id from property_definition where ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name like 'EscrowDetail')  and PROPERTY_NAME='NextDisbursementDate')) and state_name = 'ACCOUNT_CREATED';



update PROPERTY_PRESENTER_ATTRIBUTES set editable=1, hidden=0 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id=(select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name='CouponBook') and PROPERTY_NAME='NumberofCoupons') and state_name='DEFAULT';

update PROPERTY_PRESENTER_ATTRIBUTES set editable=1, hidden=0 where property_definition_id in (select property_definition_id from property_definition where entity_type_definition_id=(select ENTITY_TYPE_DEFINITION_ID from entity_type_definition where type_name='CouponBook') and PROPERTY_NAME='NumberofCoupons') and state_name='ACCOUNT_CREATED';


update PROPERTY_DEFINITION set VALUE_TYPE_DEFINITION_ID='0',CAN_EDIT_DEFINITION='1', CAN_DELETE_DEFINITION='0' where property_name='IsNewRateShouldRecorded'; 




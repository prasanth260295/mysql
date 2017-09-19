update ASSOCIATE_DEFINITION set LAZY=0 where ASSOCIATE_NAME='LoanInterest';

update ASSOCIATE_DEFINITION set LAZY=0 where ASSOCIATE_NAME='LoanRepayment'; 

update Associate_Definition  set  ASSOCIATION_TYPE =0, DEFAULT_INSTANCE=null , MANDATORY=0
 where Associate_name='BankClassificationHistory' ;
 
 update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN=0, EDITABLE=1 where PROPERTY_DEFINITION_ID in 
(select PROPERTY_DEFINITION_ID from property_definition where property_name like 'PastdueDaysCalculationMethod') and 
STATE_NAME in ('ACCOUNT_CREATED' ,'DEFAULT') ;

update PROPERTY_PRESENTER_ATTRIBUTES set HIDDEN=0 where PROPERTY_DEFINITION_ID in 
(select PROPERTY_DEFINITION_ID from property_definition where property_name like 'PastdueDaysCalculationMethod') and 
STATE_NAME in ('INQUIRY') ;

update ASSOCIATE_DEFINITION set ASSOCIATE_TYPE_DEFINITION_ID =
(select ENTITY_TYPE_DEFINITION_ID from 
ENTITY_TYPE_DEFINITION where Type_name='DepositCollateralCode')
where Associate_name='CollateralCode' 
and ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from 
ENTITY_TYPE_DEFINITION where Type_name='CollateralDeposit'); 

update ASSOCIATE_DEFINITION set ASSOCIATE_TYPE_DEFINITION_ID =
(select ENTITY_TYPE_DEFINITION_ID from 
ENTITY_TYPE_DEFINITION where Type_name='CollateralCode')
where Associate_name='CollateralCode' 
and ENTITY_TYPE_DEFINITION_ID in (select ENTITY_TYPE_DEFINITION_ID from 
ENTITY_TYPE_DEFINITION where Type_name='Collateral'); 

update associate_presenter_attributes set hidden='0' where associate_definition_id in(
select associate_definition_id from associate_definition where Entity_type_definition_id in(
select Entity_type_definition_id from Entity_type_definition where type_name='Collateral') and associate_name='AppraisalEvaluation');

update entity_type_definition set entity_type_instance_class='com.vsoftcorp.loan.model.entities.Collateral' where type_name='CollateralPersonalPropertyBusinessAssets';


update associate_Definition set default_instance=50612 where Entity_type_definition_id='443'  and 
associate_name='CollateralType' ;
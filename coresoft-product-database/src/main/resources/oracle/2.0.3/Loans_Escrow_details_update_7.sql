update  ENTITY_TYPE_DEFINITION set ENTITY_TYPE_INSTANCE_CLASS='com.vsoftcorp.loan.model.entities.InsuranceEscrow'
where type_name='InsuranceEscrow';

update  ENTITY_TYPE_DEFINITION set ENTITY_TYPE_INSTANCE_CLASS='com.vsoftcorp.loan.model.entities.TaxEscrow'
where type_name='TaxEscrow' ;

update  ENTITY_TYPE_DEFINITION set ENTITY_TYPE_INSTANCE_CLASS='com.vsoftcorp.loan.model.entities.EscrowOther'
where type_name='EscrowOther';



update  entity_type_instance set ENTITY_TYPE_INST_CLASS_NAME='com.vsoftcorp.loan.model.entities.InsuranceEscrow'
where type_name='InsuranceEscrow';


update  entity_type_instance set ENTITY_TYPE_INST_CLASS_NAME='com.vsoftcorp.loan.model.entities.TaxEscrow'
where type_name='TaxEscrow' ;

update  entity_type_instance set ENTITY_TYPE_INST_CLASS_NAME='com.vsoftcorp.loan.model.entities.EscrowOther'
where type_name='EscrowOther';

update  property_definition  set VALID_VALUES = 'java.lang.Integer:{default={0=Effect Curtailment on Start of Current Period,1=Effect Curtailment on Next Schedule Date ,2=Effect Curtailment on Start of Oldest Past Due bill to Recast the Bills.}}'  where property_name='CurtProcessCodeonPastDueAcc' ;


update property_definition set 
valid_values='java.lang.Integer:{default={0=Effect Curtailment on Next Schedule Date when A/C become Current,
1=Reverse and Reapply Prepaid Payments after Curtailment}}' where property_name='CurtProcessCodeonPrepaidAcc' ;
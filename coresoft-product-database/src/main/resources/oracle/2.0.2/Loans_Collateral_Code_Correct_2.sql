


delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralAcctsReceivableInventory');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='CollateralAcctsReceivableInventory');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralAcctsReceivableInventory');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralAcctsReceivableInventory');


delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralBrokerageAccount');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='CollateralBrokerageAccount');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralBrokerageAccount');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralBrokerageAccount');


delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralEquipment');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='CollateralEquipment');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralEquipment');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralEquipment');


delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralGSAonBusinessAssets'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralGSAonBusinessAssets');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='CollateralGSAonBusinessAssets');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralGSAonBusinessAssets');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralGSAonBusinessAssets');


delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='AcctsReceivableInventoryCollateralCode'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='AcctsReceivableInventoryCollateralCode');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='AcctsReceivableInventoryCollateralCode');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='AcctsReceivableInventoryCollateralCode');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='AcctsReceivableInventoryCollateralCode');



delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='Equipment'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='Equipment');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='Equipment');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='Equipment');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='Equipment');


delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='BrokerageAccount'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='BrokerageAccount');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='BrokerageAccount');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='BrokerageAccount');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='BrokerageAccount');



delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='GSAonBusinessAssets'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='GSAonBusinessAssets');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='GSAonBusinessAssets');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='GSAonBusinessAssets');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='GSAonBusinessAssets');


update entity_type_Definition set type_name='PersonalPropertyBusinessAssets' ,type_description='Personal Property Business Assets' where 
type_name='RealEstateProperty';


update  associate_definition set ASSOCIATE_TYPE_DEFINITION_ID ='42244' 
where ASSOCIATE_NAME='CollateralCode' and  entity_type_Definition_id in 
(select entity_type_definition_id from entity_type_definition where type_name='CollateralProperty');


delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralLifeInsuranceorAnnuity'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralLifeInsuranceorAnnuity');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='CollateralLifeInsuranceorAnnuity');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralLifeInsuranceorAnnuity');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='CollateralLifeInsuranceorAnnuity');


delete from  ASSOCIATE_PRESENTER_ATTRIBUTES where ASSOCIATE_DEFINITION_ID in 
(select ASSOCIATE_DEFINITION_ID  from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='LifeInsuranceAnnuity'));

delete from ASSOCIATE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in 
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='LifeInsuranceAnnuity');

delete from PROPERTY_PRESENTER_ATTRIBUTES  where PROPERTY_DEFINITION_ID  in
(select PROPERTY_DEFINITION_ID  from ENTITY_TYPE_DEFINITION ed ,
PROPERTY_DEFINITION pd where ed.ENTITY_TYPE_DEFINITION_ID=pd.ENTITY_TYPE_DEFINITION_ID and TYPE_NAME='LifeInsuranceAnnuity');


delete from PROPERTY_DEFINITION where ENTITY_TYPE_DEFINITION_ID  in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='LifeInsuranceAnnuity');

delete from ENTITY_TYPE_DEFINITION where ENTITY_TYPE_DEFINITION_ID in
(select ENTITY_TYPE_DEFINITION_ID  from ENTITY_TYPE_DEFINITION where TYPE_NAME='LifeInsuranceAnnuity');

update associate_definition set associate_type_definition_id=(select entity_type_definition_id from entity_type_definition 
where type_name='PropertyCollateralCode') where entity_type_definition_id=(select entity_type_definition_id from 
entity_type_definition where type_name='CollateralProperty') and associate_name='CollateralCode';


update associate_definition set default_instance=(select  ENTITY_TYPE_INSTANCE_ID  from ENTITY_TYPE_INSTANCE where type_name='CollateralType'
and ENTITY_TYPE_INSTANCE_ID in (select ENTITY_TYPE_INSTANCE_ID from property where property_name='Code'
 and VALUE like'java.lang.Integer:1')) where entity_type_definition_id=(select entity_type_definition_id from 
entity_type_definition where type_name='CollateralProperty') and associate_name='CollateralType';


update associate_definition set associate_type_definition_id=(select entity_type_definition_id from entity_type_definition 
where type_name='PersonalPropertyBusinessAssets') where entity_type_definition_id=(select entity_type_definition_id from 
entity_type_definition where type_name='CollateralPersonalPropertyBusinessAssets') and associate_name='CollateralCode';

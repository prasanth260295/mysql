update Associate_Definition set lazy=1 where Associate_name='DealerParticipation' ;

update property_presenter_Attributes set hidden=0  where property_definition_id in 
(select Property_definition_id from Property_Definition where property_name='NumberofCoupons' );

update property_presenter_Attributes set EDITABLE=1  where property_definition_id in 
(select Property_definition_id from Property_Definition where property_name='NumberofCoupons' )
and  state_name in ('ACCOUNT_CREATED' ,'DEFAULT');
--These scripts moved to 2.0.55

--To change data type of phonenumber/faxnumber/workphone/mobilenumber/fax from integer to string (Numeric Text) because integer can hold max. 2147483647 (2 power 31 minus 1) and hence cannot hold 10 digit phone number
--update property_definition set VALUE_TYPE_DEFINITION_ID=9,DEFAULT_VALUE='java.lang.String:',VALID_VALUES='java.lang.String:{default={}}'
--where property_name in ('PhoneNumber','FaxNumber','WorkPhone','MobilePhone','Fax')

--Default value added for BalToUseforMaxLateChargeperforLife in latecharge

--update  Property_definition set default_value='java.lang.Integer:2', valid_values='java.lang.Integer:{default={0=Principal Balnce,1=Original Loan Amount,2=None}}'
--where property_name='BalToUseforMaxLateChargeperforLife' and Entity_type_definition_id =
--(select Entity_type_definition_id from Entity_type_definition where type_name='LateCharge');

ALTER TABLE LOAN ADD REMAIN_ACC_INTEREST NUMBER(20,5);
--Updated default value false
update property_definition set default_value='java.lang.Boolean:false' where property_name like 'RecomputeUnpaidBill';



---------------------------------------CreditLine System yes script-----------
update entity_type_definition set LOOKUP='0' WHERE TYPE_NAME LIKE 'CreditLine';

update entity_type_definition set SYSTEM='1' WHERE TYPE_NAME LIKE 'CreditLine';
UPDATE PROPERTY_DEFINITION SET PROPERTY_DESCRIPTION='Trail P '||'&'||' I Amount' WHERE PROPERTY_NAME='TrailPandIAmount' AND ENTITY_TYPE_DEFINITION_ID  IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME ='LoanModification');

UPDATE PROPERTY_DEFINITION SET VALID_VALUES='java.lang.Integer:{default={1=InTrailPeriod,2=MarkPermanent,3=Accepted,4=Rejected}}' WHERE PROPERTY_NAME='RecordStatus' AND ENTITY_TYPE_DEFINITION_ID  IN (SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME ='LoanModification');

UPDATE LOAN_ENTRY_POSTING_RULE SET AFFECTS_BILL=1 WHERE POSTING_RULE_ID=8863;

update property_definition set default_value='com.vsoftcorp.types.Percentage:0.00' where property_name like 'YieldPercentage' and entity_type_definition_id in(select entity_type_definition_id from entity_type_definition where type_name like 'ServicingLoanDetails');
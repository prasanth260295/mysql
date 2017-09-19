INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityCalculation'), 0, 0, 0, 0, 'INQUIRY');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityAmount'), 0, 0, 0, 0, 'ACCOUNT_CREATED');



INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleName'), 0, 0, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleName'), 0, 0, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleName'), 0, 0, 0, 1, 'ACCOUNT_CREATED');

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleId'), 0, 0, 0, 1, 'ACCOUNT_CREATED');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleId'), 0, 0, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='RoleId'), 0, 0, 0, 1, 'INQUIRY');

INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='SendPastDueNotice'), 1, 1, 0, 1, 'ACCOUNT_CREATED');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='Races'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='Races'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='Races'), 0, 0, 0, 0, 'ACCOUNT_CREATED');


INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'INQUIRY');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'DEFAULT');
INSERT INTO PROPERTY_PRESENTER_ATTRIBUTES(PROPERTY_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select property_definition_id from property_definition  where entity_type_definition_id in (select entity_type_definition_id from entity_type_definition where type_name ='CoSigner') and property_name='LiabilityPercentage'), 0, 0, 0, 0, 'ACCOUNT_CREATED');
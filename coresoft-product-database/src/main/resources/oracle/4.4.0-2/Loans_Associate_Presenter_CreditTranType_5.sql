 INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select associate_definition_id from associate_definition where associate_name like 'AccountCreditTransactionType'), 1, 0, 1, 0, 'DEFAULT');
INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
  VALUES((select associate_definition_id from associate_definition where associate_name like 'AccountCreditTransactionType'), 1, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO ASSOCIATE_DEFINITION(ASSOCIATE_DEFINITION_ID, ENTITY_TYPE_DEFINITION_ID, ASSOCIATE_NAME, ASSOCIATE_INDEX, ASSOCIATE_DESCRIPTION, ASSOCIATE_TYPE_DEFINITION_ID, ASSOCIATE_TYPE_OVERRIDEN, MULTIPLICITY, MULTIPLICITY_OVERRIDEN, ASSOCIATION_TYPE, ASSOCIATION_TYPE_OVERRIDEN, LAZY, LAZY_OVERRIDEN, MANDATORY, MANDATORY_OVERRIDEN, COPY, COPY_OVERRIDEN, DEFAULT_INSTANCE, DEFAULT_INSTANCE_OVERRIDEN, INHERITED, CAN_EDIT_DEFINITION, CAN_DELETE_DEFINITION, CATEGORY_OVERRIDEN, CATEGORY, TEMPLATE, TEMPLATE_OVERRIDEN)
--  VALUES((select max(associate_definition_id)+1 from associate_definition), (select entity_type_definition_id from entity_type_definition where type_name='PastDueCounterScheme'), 'PastDueRange', 0, 'Past Due Range', (select entity_type_definition_id from entity_type_definition where type_name='PastDueRange'), 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 'C', NULL, 0);
--
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(associate_definition_id) from associate_definition), 0, 0, 1, 0, 'ACCOUNT_CREATED');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(associate_definition_id) from associate_definition), 0, 0, 1, 0, 'DEFAULT');
--INSERT INTO ASSOCIATE_PRESENTER_ATTRIBUTES(ASSOCIATE_DEFINITION_ID, HIDDEN, HIDDEN_OVERRIDEN, EDITABLE, EDITABLE_OVERRIDEN, STATE_NAME)
--  VALUES((select max(associate_definition_id) from associate_definition), 0, 0, 0, 0, 'INQUIRY');
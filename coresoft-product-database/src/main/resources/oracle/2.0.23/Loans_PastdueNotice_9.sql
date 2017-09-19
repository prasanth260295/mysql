UPDATE ASSOCIATE_DEFINITION SET MANDATORY=1,ASSOCIATION_TYPE=0 WHERE ENTITY_TYPE_DEFINITION_ID=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'PastDueParameters') AND ASSOCIATE_NAME='PastDueNoticeSchedule';

UPDATE ASSOCIATE_PRESENTER_ATTRIBUTES SET HIDDEN=0,EDITABLE=1 WHERE ASSOCIATE_DEFINITION_ID =(SELECT ASSOCIATE_DEFINITION_ID FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME LIKE 'PastDueNoticeSchedule');

UPDATE ASSOCIATE_DEFINITION SET MANDATORY=1,ASSOCIATION_TYPE=0 WHERE ENTITY_TYPE_DEFINITION_ID=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'PastDueNoticeSchedule') AND ASSOCIATE_NAME='PastDuePeriod';

UPDATE ASSOCIATE_PRESENTER_ATTRIBUTES SET HIDDEN=0,EDITABLE=1 WHERE ASSOCIATE_DEFINITION_ID =(SELECT ASSOCIATE_DEFINITION_ID FROM ASSOCIATE_DEFINITION WHERE ASSOCIATE_NAME LIKE 'PastDuePeriod');

UPDATE PROPERTY_DEFINITION SET MANDATORY=1,DEFAULT_VALUE='java.lang.String:5 days past due notice' WHERE ENTITY_TYPE_DEFINITION_ID=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'PastDueNoticeSchedule') AND PROPERTY_NAME='Description';

UPDATE PROPERTY_DEFINITION SET MANDATORY=1,DEFAULT_VALUE='com.vsoftcorp.time.Duration:DAY:5' WHERE ENTITY_TYPE_DEFINITION_ID=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'PastDuePeriod') AND PROPERTY_NAME='Period';

UPDATE PROPERTY_DEFINITION SET DEFAULT_VALUE='java.lang.Boolean:false' WHERE ENTITY_TYPE_DEFINITION_ID=(SELECT ENTITY_TYPE_DEFINITION_ID FROM ENTITY_TYPE_DEFINITION WHERE TYPE_NAME LIKE 'PastDueParameters') AND PROPERTY_NAME='TriggerPastDueNoticeonLateCharge';

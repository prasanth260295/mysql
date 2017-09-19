--------------------------Freeze Code--------------------------------------------------------------------------------------------------

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'FreezeCode', 'Freeze Code', 1, 'com.vsoftcorp.loan.model.entities.FreezeCode');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:Hard');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:No Transactions Allowed');

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'FreezeCode', 'Freeze Code', 1, 'com.vsoftcorp.loan.model.entities.FreezeCode');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:Medium');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Only Allow Escrow Disbursement Transactions');

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'FreezeCode', 'Freeze Code', 1, 'com.vsoftcorp.loan.model.entities.FreezeCode');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:Soft');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Notification that Loan is in collections');

--------------------------Mail Option---------------------------------------------------------------------------------------------------

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'MailOption', 'Mail Option', 1, 'com.vsoftcorp.loan.model.entities.MailOption');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:1');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Mail All');

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'MailOption', 'Mail Option', 1, 'com.vsoftcorp.loan.model.entities.MailOption');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:2');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Do not Mail');

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'MailOption', 'Mail Option', 1, 'com.vsoftcorp.loan.model.entities.MailOption');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:3');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Do not Print Late Notices');

INSERT INTO ENTITY_TYPE_INSTANCE(ENTITY_TYPE_INSTANCE_ID, TYPE_NAME, TYPE_DESCRIPTION, STATUS, ENTITY_TYPE_INST_CLASS_NAME)
 VALUES(ENTITYTYPEINSTID_SEQ.nextval, 'MailOption', 'Mail Option', 1, 'com.vsoftcorp.loan.model.entities.MailOption');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Code', 'java.lang.String:4');
INSERT INTO PROPERTY(ENTITY_TYPE_INSTANCE_ID, PROPERTY_NAME, VALUE)
VALUES(ENTITYTYPEINSTID_SEQ.currval, 'Description', 'java.lang.String:Credit Bureau Status');
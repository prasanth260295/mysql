DROP TABLE POLICY_MASTER CASCADE CONSTRAINTS;

CREATE TABLE ROLES_MASTER
  (
    "UNIQUE_ID" NUMBER(15,0) NOT NULL ENABLE,
    "ROLE_ID"   VARCHAR2(30),
    "ROLE_NAME" VARCHAR2(30),
    CONSTRAINT "ROLE_ID_PK" PRIMARY KEY ("UNIQUE_ID")
  );

CREATE TABLE USER_MASTER
  (
    "UNIQUE_ID"      NUMBER(15,0) NOT NULL ENABLE,
    "INSTITUTION_ID" NUMBER(3),
    "BRANCH_ID"      NUMBER(3),
    "USER_ID"        VARCHAR2(30),
    "USER_NAME"      VARCHAR2(30),
    "PASSWORD"       VARCHAR2(30),
    "FIRST_NAME"     VARCHAR2(30),
    "LAST_NAME"      VARCHAR2(30),
    "ROLE_ID"        NUMBER(3),
    CONSTRAINT "USER_ID_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE,
    CONSTRAINT "ROLE_ID_FK" FOREIGN KEY ("ROLE_ID") REFERENCES "ROLES_MASTER" ("UNIQUE_ID") ENABLE
  );

CREATE TABLE POLICY_MASTER
  (
    "UNIQUE_ID"          NUMBER(15,0) NOT NULL ENABLE,
    "POLICY_NAME"        VARCHAR2(30),
    "POLICY_DESCRIPTION" VARCHAR2(30),
    CONSTRAINT "POLICY_ID_PK" PRIMARY KEY ("UNIQUE_ID")
  );
CREATE TABLE ROLE_POLICY_ACCESS
  (
    "UNIQUE_ID"        NUMBER(15,0) NOT NULL ENABLE,
    "ROLE_ID"          NUMBER(3),
    "POLICY_ID" NUMBER(3),
    CONSTRAINT "ROLE_POLICY_ID_PK" PRIMARY KEY ("UNIQUE_ID"),
    CONSTRAINT "ROLE_ID_ACC_FK" FOREIGN KEY ("ROLE_ID") REFERENCES "ROLES_MASTER" ("UNIQUE_ID") ENABLE,
    CONSTRAINT "POLICY_ID_ACC_FK" FOREIGN KEY ("POLICY_ID") REFERENCES "POLICY_MASTER" ("UNIQUE_ID") ENABLE
  );
CREATE SEQUENCE USER_ID_SEQ MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 1;

ALTER TABLE USER_MASTER ADD ENABLED NUMBER(1);

CREATE TABLE "FIELD_MASTER"
    (
      "FIELD_ID"   NUMBER(30,0) NOT NULL ENABLE,
      "FIELD_NAME" VARCHAR2(100),
      CONSTRAINT "FIELD_MASTER_PK" PRIMARY KEY ("FIELD_ID") ENABLE
    );

CREATE TABLE "USECASE_MASTER"
    (
      "USECASE_ID"   NUMBER(30,0) NOT NULL ENABLE,
      "USECASE_NAME" VARCHAR2(100),
      CONSTRAINT "USECASE_MASTER_PK" PRIMARY KEY ("USECASE_ID") ENABLE
    );

CREATE TABLE "ROLE_FIELD_ACCESS"
    (
      "UNIQUE_ID"      NUMBER(30,0) NOT NULL ENABLE,
      "FIELD_BEHAVIOR" NUMBER,
      "STATUS"         NUMBER(1),
      "ROLE_ID"        NUMBER(30,0),
      "FIELD_ID"       NUMBER(30,0),
      "USECASE_ID"     NUMBER(30,0),
      CONSTRAINT "ROLE_FIELD_ACCESS_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE,
      CONSTRAINT "ROLE_MASTER_Fk" FOREIGN KEY ("ROLE_ID") REFERENCES "ROLES_MASTER" ("UNIQUE_ID") ENABLE,
      CONSTRAINT "FIELD_MASTER_FK" FOREIGN KEY ("FIELD_ID") REFERENCES "FIELD_MASTER" ("FIELD_ID") ENABLE,
      CONSTRAINT "USECASE_MASTER_FK" FOREIGN KEY ("USECASE_ID") REFERENCES "USECASE_MASTER" ("USECASE_ID") ENABLE
    );
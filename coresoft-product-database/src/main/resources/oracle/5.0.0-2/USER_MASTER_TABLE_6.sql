alter table USER_MASTER add MIDDLE_NAME VARCHAR2(30);
alter table USER_MASTER add IS_PERSONAL_BANKER NUMBER(1) DEFAULT 0;
alter table USER_MASTER add IS_RELATIONSHIP_OFFICER NUMBER(1) DEFAULT 0;
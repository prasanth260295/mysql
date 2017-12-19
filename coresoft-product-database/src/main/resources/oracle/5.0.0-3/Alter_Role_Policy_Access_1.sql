alter table role_policy_access add STATUS NUMBER(1);

CREATE SEQUENCE  ROLE_POLICY_ID_SEQ  MINVALUE 1 MAXVALUE 99999999999 INCREMENT BY 1 START WITH 1;

create sequence ROLE_FIELD_ACCESS_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;
alter table institution add ROLE_MANAGEMENT varchar2(50);

CREATE TABLE "USER_ROLES" (
      "UNIQUE_ID" NUMBER(30,0) NOT NULL ENABLE, 
	  "ROLE_ID" VARCHAR2(50), 
	  "ROLE_NAME" VARCHAR2(100),
   CONSTRAINT "USER_ROLES_PK" PRIMARY KEY ("UNIQUE_ID") ENABLE);

create sequence USER_ROLES_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;
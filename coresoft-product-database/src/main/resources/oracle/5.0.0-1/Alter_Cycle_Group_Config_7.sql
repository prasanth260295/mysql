alter table CYCLE_GROUP_CONFIG add region_id varchar2(30);

alter table automatic_transfer_instruction drop constraint AT_TARGET_ACC;
alter table automatic_transfer_instruction drop constraint AT_SRC_ACC;

alter table CIF_FIELDS_MASTER ADD(IS_MANDATORY NUMBER(1),FIELD_VIEW VARCHAR2(200));



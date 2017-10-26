create sequence SAFE_DEPOSIT_CONTRACT_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;

create sequence PAYMENT_DETAILS_SEQ minvalue 1 maxvalue 9999999999 increment by 1 start with 1;

alter table cabinet add CABINET_NUMBER VARCHAR2(20);
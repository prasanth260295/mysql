alter table transaction_posttoday add SETTELEMENT_FILE_ID VARCHAR2(30);
alter table extract_master add product varchar2(300);

ALTER TABLE CUSTOMER_ACC_RISK_ASSESMENT ADD INDICATOR NUMBER(2) DEFAULT 1;
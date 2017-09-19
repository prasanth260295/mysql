alter table account_opening_event add status NUMBER(10);

alter table account_opening_event add ACCOUNT_OPEN_DATE DATE;


alter table deposit add SOURCE_NAME VARCHAR2(30);

alter table deposit add SOURCE_DETAILS VARCHAR2(100);

alter table statement_codes_master modify STATEMENT_CODE VARCHAR2(30);

alter table institution add INTEREST_ON_PREMATURE_CLOSURE NUMBER;

DELETE FROM PROD_CATEGORY_FEATURES WHERE FEATURE_UID=234 AND PROD_CATEGORY_ID=3;
DELETE FROM PROD_CAT_DEF_FEATURES WHERE FEATURE_UID=234  AND PRODUCT_CATEGORY=3;

ALTER TABLE account_application ADD SOURCE_NAME VARCHAR2(50);
ALTER TABLE account_application ADD SOURCE_DETAILS VARCHAR2(50);

ALTER TABLE deposit ADD CALL_DATE DATE;
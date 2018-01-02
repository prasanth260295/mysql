alter table DEPOSITS_INTEREST_CODES add PRODUCT_CATEGORY NUMBER(15); 
alter table deposits_interest_rates add IS_ENABLED  NUMBER;     
alter table deposits_interest_rates add INSTITUTION_ID  NUMBER(10);   
alter table deposits_interest_rates add BRANCH_ID NUMBER(10);   
alter table deposits_interest_rates add REGION_ID NUMBER(10);   
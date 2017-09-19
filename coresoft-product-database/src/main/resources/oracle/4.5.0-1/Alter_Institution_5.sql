alter table institution add INT_BACK_DATE_EFFECTIVE_ON varchar2(100);

alter table institution add MAX_NO_DAYS NUMBER;

alter table interest_code_rates add PROCESSED NUMBER default 1;
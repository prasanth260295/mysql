alter table ach_ware_house_entry drop column corrected_account_number;
alter table ach_ware_house_entry add corrected_account_number  VARCHAR2(30);
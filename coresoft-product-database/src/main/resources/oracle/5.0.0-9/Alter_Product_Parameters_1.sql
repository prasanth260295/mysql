alter table prod_cat_def_features add account_level_visibility NUMBER(1);
alter table product_feature add product_level_visibility NUMBER(1);
alter table product_feature add account_level_visibility NUMBER(1);
alter table feature add parent_feature_uid NUMBER(15);

alter table feature add feature_info varchar2(300);
ALTER TABLE account_application ADD WHO_IS_ASSO_SECREATARY VARCHAR2(45); 
ALTER TABLE deposit ADD WHO_IS_ASSO_SECREATARY VARCHAR2(45);

Alter Table Transaction_Posttoday Add(Swipe_Date Varchar2(12),Pin_Or_Sig Varchar2(5));

Alter Table Account_History_Item Add (Swipe_Date Varchar2(12),PIN_OR_SIG VARCHAR2(5));

alter table cycle_group_config add IS_DEFAULT NUMBER(1);

alter table business_prod_form_template add OWNERSHIP_TYPE VARCHAR2(50);

ALTER TABLE deposit ADD MULTIPLE_BENEFICIARY VARCHAR2(500);
ALTER TABLE account_application ADD MULTIPLE_BENEFICIARY VARCHAR2(500);
ALTER TABLE account_application ADD ALL_FORMS_SAVED NUMBER(2);
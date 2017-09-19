update property_definition set valid_values='java.lang.Integer:{default={0=Effect Curtailment on Start of Current Period,1=Effect Curtailment on Next Schedule Date ,2=Effect Curtailment on Start of Oldest Past Due bill to Recast the Bills,3=Effect Curtailment on Effective Date}}' 
where PROPERTY_NAME='CurtProcessCodeonPastDueAcc';

update property_definition set valid_values='java.lang.Integer:{default={0=Effect Curtailment on Next Schedule Date when A/C become Current, 1=Reverse and Reapply Prepaid Payments after Curtailment,2=Effect Curtailment on Effective Date}}'
where PROPERTY_NAME='CurtProcessCodeonPrepaidAcc';
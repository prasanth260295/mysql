CREATE OR REPLACE FORCE VIEW "PARTY_ACCOUNT_ROLE_VW" ("ACCOUNT_NO", "PARTY_TYPE", "PARTY_NAME", "BUSINESS_NAME", "FIRST_NAME", "ACCOUNT_ID", "LAST_NAME", "EMPLOYER_NAME", "RESPONSIBILITY_TYPE", "ROLE_CREATION_DATE", "BUSINESS_DATE", "ASSOCIATION_DATE", "RELATIONSHIP_WITH_INSTITUTION", "ASSIGNED_OFFICER", "PARTY_ID", "INSTITUTION_ID", "INSTITUTION_ASSOCIATION_ID", "UNIQUE_PARTY_ROLE_ID", "ROLE_TYPE_ID", "UNIQUE_ASSOCIATION_ID", "CONTRACT_TYPE_ID")
AS
  SELECT
    CASE
      WHEN A.ACCOUNT_CATEGORY='1'
      THEN(SELECT account_no FROM deposit WHERE account_id=A.ACCOUNT_ID)
      WHEN A.ACCOUNT_CATEGORY='2'
      then
        (SELECT account_no FROM LOAN L, LOAN_ACCOUNT LA
        WHERE A.ACCOUNT_ID = LA.ACCOUNT_ID
        AND LA.LOAN_ID     = L.ACCOUNT_ID
        )
        else (
          select master_agreement_no from master_agreement m 
          where  a.account_id=m.contract_id
        )
    END ACCOUNT_NO,
    PV.PARTY_TYPE,
    PV.PARTY_NAME,
    PV.BUSINESS_NAME,
    PV.FIRST_NAME,
    par.account_id,
    PV.LAST_NAME,
    PV.EMPLOYER_NAME,
    AO.RESPONSIBILITY_TYPE,
    PR.ROLE_CREATION_DATE,
    PR.BUSINESS_DATE,
    PIA.ASSOCIATION_DATE,
    PIA.RELATIONSHIP_WITH_INSTITUTION,
    PIA.ASSIGNED_OFFICER,
    PV.PARTY_ID,
    PIA.INSTITUTION_ID,
    PIA.INSTITUTION_ASSOCIATION_ID,
    PR.UNIQUE_PARTY_ROLE_ID,
    PR.ROLE_TYPE_ID,
    PR.UNIQUE_ASSOCIATION_ID,
    A.Contract_type_id
  FROM PARTY_ROLE PR,
    PARTY_ACCOUNT_ROLE PAR,
    PARTY_VW PV,
    ACCOUNT_OWNER AO,
    PARTY_INSTITUTION_ASSOCIATION PIA,
    ACCOUNT A
  WHERE PR.UNIQUE_PARTY_ROLE_ID = PAR.UNIQUE_PARTY_ROLE_ID
  AND PAR.UNIQUE_PARTY_ROLE_ID  = AO.UNIQUE_PARTY_ROLE_ID
  AND PIA.PARTY_ID              = PV.PARTY_ID
  AND A.ACCOUNT_ID              = PAR.ACCOUNT_ID
  AND PR.UNIQUE_ASSOCIATION_ID  = PIA.UNIQUE_ASSOCIATION_ID;
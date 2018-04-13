CREATE OR REPLACE VIEW "AUTH_FORM_VIEW" ("PARTY_NAME", "UNIQUE_PARTY_ROLE_ID", "INSTITUTION_ASSOCIATION_ID", "ACC_OPENING_EVENT_ID", "RESPONSIBILITY_TYPE")
AS
  SELECT pv.party_name,
    ip.unique_party_role_id,
    pia.institution_association_id,
    aoe.acc_opening_event_id,
    ip.responsibility_type
  FROM party_vw pv,
    party_institution_association pia,
    interested_party ip,
    account_opening_event aoe,
    party_role pr
  WHERE pia.party_id            = pv.party_id
  AND pia.unique_association_id = pr.unique_association_id
  AND ip.acc_opening_event_id   = aoe.unique_id
  AND ip.unique_party_role_id   = pr.unique_party_role_id;
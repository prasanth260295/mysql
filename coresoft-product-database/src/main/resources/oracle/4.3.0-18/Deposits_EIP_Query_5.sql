CREATE OR REPLACE VIEW EIP_PARTY_ACCOUNT_ROLE_VW AS
SELECT
  	PIA.PARTY_ID,
	PAR.ACCOUNT_ID,
	AO.RESPONSIBILITY_TYPE,
	PIA.INSTITUTION_ID,
	PIA.INSTITUTION_ASSOCIATION_ID,
	PR.UNIQUE_PARTY_ROLE_ID,
	PR.ROLE_TYPE_ID,
	PR.UNIQUE_ASSOCIATION_ID 
FROM
	PARTY_ROLE PR,
	PARTY_ACCOUNT_ROLE PAR,
	ACCOUNT_OWNER AO,
	PARTY_INSTITUTION_ASSOCIATION PIA,
	ACCOUNT A 
WHERE
	PR.UNIQUE_PARTY_ROLE_ID = PAR.UNIQUE_PARTY_ROLE_ID AND
	PAR.UNIQUE_PARTY_ROLE_ID = AO.UNIQUE_PARTY_ROLE_ID AND
	A.ACCOUNT_ID = PAR.ACCOUNT_ID AND
	PR.UNIQUE_ASSOCIATION_ID = PIA.UNIQUE_ASSOCIATION_ID;

--CREATE
--	OR
--REPLACE
--	VIEW CLASS_TOTAL_REPORT_VW 
--	AS 
--
--SELECT
--	A.CREDITORAHLIFEREBATE,
--	A.AHREBATE,
--		B.*,C.P_LIFEAHBALANCE
--FROM
--	(	SELECT
--			LAV.ACCOUNT_ID ACCOUNTID,
--			SUM(DECODE(CLI.P_INSURANCETYPE,'0',NVL(AI3.P_CURRENTREBATE,0))) CREDITORAHLIFEREBATE,
--			SUM(DECODE(CLI.P_INSURANCETYPE,'1',NVL(AI4.P_CURRENTREBATE,0))) AHREBATE 
--		FROM
--			LOAN_ACCOUNT_VW LAV,
--			REBATEBASEDINSURANCE_VW AI3,
--			REBATEBASEDINSURANCE_VW AI4,
--			CREDITLIFEAHINSURANCE_VW CLI,
--			LOANCONTRACT_MSVW LCS 
--		WHERE
--			LAV.CONTRACT_ID=LCs.ENTITY_TYPE_INSTANCE_ID(+) AND
--			LCS.C_CREDITLIFEAHINSURANCE=CLI.ENTITY_TYPE_INSTANCE_ID(+) AND
--			CLI.ENTITY_TYPE_INSTANCE_ID=AI3.ENTITY_TYPE_INSTANCE_ID(+) AND
--			CLI.ENTITY_TYPE_INSTANCE_ID=AI4.ENTITY_TYPE_INSTANCE_ID(+) AND
--			(CLI.P_INSURANCETYPE IN (0,1) OR CLI.P_INSURANCETYPE IN(0,1)) 
--		GROUP BY
--			LAV.ACCOUNT_ID 
--	)
--	A,
--	(	SELECT
--			I.INSTITUTION_ID INSTITUTIONID,
--			I.REGION_NAME INSTITUTIONNAME,
--			LAV.ACCOUNT_NO ACCOUNTNO,
--			LAV.LOAN_STATUS LOAN_STATUS,
--			LAV.ACCOUNT_ID ACCOUNTID,
--			BR.BRANCH_NAME BRANCHNAME,
--			BR.BRANCH_ID BRANCHID,
--			LP.ENTITY_TYPE_INSTANCE_ID LP_ENTITY_TYPE_INSTANCE_ID,
--			IC1.ENTITY_TYPE_INSTANCE_ID IC_ENTITY_TYPE_INSTANCE_ID,
--			LP.P_PRODUCTCODE,
--			LP.TYPE_DESCRIPTION PROD_DESC,
--			IC1.TYPE_DESCRIPTION INT_CAL_DESC,
--			LAV.PRINCIPLE_BALANCE PRINCIPLEBALANCE,
--			trunc(LAV.ACCRUED_INTEREST_NET,2) INTERESTDUE,
--			DI.P_CURRENTREBATE,
--			LPCV.P_ESCROWBALANCE,
--	                       lc.entity_type_instance_id contract_id
--			--FAI.P_CURRENTBALANCE AS P_LIFEAHBALANCE 
--		FROM
--			BRANCH BR,
--			INSTITUTION I,
--			LOAN_ACCOUNT_MVW LAV,
--			LOANCONTRACT_MVW LC,
--			--LOANCONTRACT_SVW LCS,
--			LOANPRODUCT_MVW LP,
--			LOANINTEREST_MVW LI,
--			INTERESTCALCULATION_MVW IC1,
--			DISCOUNTEDINTERESTCALCULAT_MVW DI,
--			--CREDITLIFEAHINSURANCE_VW CLI,
--			--FIXEDAMOUNTBASEDINSURANCE_VW FAI,
--			LOAN_PRODUCT_COLLATERAL_VW LPCV 
--		WHERE
--			LAV.INSTITUTION_ID=I.INSTITUTION_ID AND
--			LAV.OPENING_BRANCH=BR.UNIQUE_ID(+) AND
--			LAV.CONTRACT_ID=LC.ENTITY_TYPE_INSTANCE_ID AND
--			LC.A_LOANPRODUCT=LP.ENTITY_TYPE_INSTANCE_ID AND
--			--LC.ENTITY_TYPE_INSTANCE_ID=LCS.ENTITY_TYPE_INSTANCE_ID(+) AND
--			--LCS.C_CREDITLIFEAHINSURANCE=CLI.ENTITY_TYPE_INSTANCE_ID(+) AND
--			--CLI.ENTITY_TYPE_INSTANCE_ID=FAI.ENTITY_TYPE_INSTANCE_ID(+) AND
--			Lp.A_LOANINTEREST=li.ENTITY_TYPE_INSTANCE_ID AND
--			LI.A_INTERESTCALCULATION=IC1.ENTITY_TYPE_INSTANCE_ID AND
--			IC1.ENTITY_TYPE_INSTANCE_ID=DI.ENTITY_TYPE_INSTANCE_ID(+) AND
--			LP.ENTITY_TYPE_INSTANCE_ID=LPCV.LP_ENTITY_TYPE_INSTANCE_ID(+) AND
--			((LAV.PRINCIPLE_BALANCE!=0) OR (TRUNC(ACCRUED_INTEREST_NET,2))!=0.00 OR (DI.P_CURRENTREBATE!=0) OR (LPCV.P_ESCROWBALANCE!=0)) 
--	)
--	B ,
--(select lcs.entity_type_instance_id credit_life_id,fai.P_CURRENTBALANCE P_LIFEAHBALANCE from loancontract_msvw lcs,fixedamountbasedinsurance_vw fai where
--lcs.c_creditlifeahinsurance=fai.entity_type_instance_id 
-- and lcs.c_creditlifeahinsurance is not null)C
--
--WHERE
--		B.ACCOUNTID=A.ACCOUNTID(+)
--and B.contract_id=C.credit_life_id(+);
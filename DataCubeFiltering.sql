    select [DRUG_CODE], SEX, YEAR_NOS , SUM([ClaimData1_Zanjan].[dbo].[NOSKHE_ITEM].[TEDAD])
 
	FROM [ClaimData1_Zanjan].[dbo].[NOSKHE_ITEM]
	INNER JOIN [ClaimData1_Zanjan].[dbo].[SAR_NOSKHE]   ON SAR_NOSKHE.CODE = NOSKHE_ITEM.FK_SAR_NOS
	WHERE DRUG_CODE IS NOT NULL
	group BY CUBE ([DRUG_CODE], SEX,  YEAR_NOS  ) 

	
	  SELECT *
	  FROM [ClaimData1_Zanjan].[dbo].[SAR_NOSKHE]
	   INNER JOIN  [ClaimData1_Zanjan].[dbo].[NOSKHE_ITEM]  ON SAR_NOSKHE.CODE = NOSKHE_ITEM.FK_SAR_NOS
	  WHERE SEX = 1 AND YEAR_NOS=1396 AND DRUG_CODE != NULL
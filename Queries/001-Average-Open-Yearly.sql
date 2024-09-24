/*
1. Average open price yearly.
*/

SELECT
	YEAR([Date]) AS [Year],
	AVG(DISTINCT [Open]) AS [Average Yearly Open Price]
FROM [SP500Insights].[dbo].[data]
GROUP BY YEAR([Date])
ORDER BY YEAR([Date]) ASC;

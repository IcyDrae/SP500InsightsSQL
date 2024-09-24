/*
2. Average open and close prices for each month of each year.
*/

SELECT
	YEAR([Date]) AS [Year],
	MONTH([Date]) AS [Month],
	AVG(DISTINCT [Open]) AS [Average Monthly Open Price],
	AVG(DISTINCT [Close]) AS [Average Monthly Close Price]
FROM [SP500Insights].[dbo].[data]
GROUP BY
	YEAR([Date]),
	MONTH([Date])
ORDER BY
	YEAR([Date]) ASC,
	MONTH([Date]) ASC;

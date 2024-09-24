USE SP500Insights;
GO

--
-- 11. Calculate the difference between the High and Low
-- prices for each year(volatility).
--

SELECT
	DISTINCT YEAR([Date]) AS [Year],
	MAX(DISTINCT [High]) AS [Highest High],
	MAX(DISTINCT [Low]) AS [Highest Low],
	(MAX([High]) - MAX([Low])) AS [Volatility]
FROM [dbo].[data]
WHERE
	YEAR([Date]) >= 2000
GROUP BY
	YEAR([Date])
ORDER BY
	YEAR([Date]) ASC;

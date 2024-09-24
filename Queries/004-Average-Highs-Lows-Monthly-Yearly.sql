USE SP500Insights;
GO

--
-- 4. Average highs and lows for each month of each year.
--

SELECT
	YEAR([Date]) AS [Year],
	MONTH([Date]) AS [Month],
	AVG(DISTINCT [High]) AS [Average Monthly High],
	AVG(DISTINCT [Low]) AS [Average Monthly Low]
FROM [dbo].[data]
GROUP BY
	YEAR([Date]),
	MONTH([Date])
ORDER BY
	YEAR([Date]) ASC,
	MONTH([Date]) ASC;
USE SP500Insights;
GO

--
-- 6. Maximum and minimum highs for each month of each year.
--

SELECT
	YEAR([Date]) AS [Year],
	MONTH([Date]) AS [Month],
	MAX(DISTINCT [High]) AS [Maximum High],
	MIN(DISTINCT [High]) AS [Minimum High]
FROM [dbo].[data]
GROUP BY
	YEAR([Date]),
	MONTH([Date])
ORDER BY
	YEAR([Date]) DESC,
	MONTH([Date]) ASC;

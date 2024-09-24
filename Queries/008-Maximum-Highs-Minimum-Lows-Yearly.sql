USE SP500Insights;
GO

--
-- 8. Maximum highs and minimum lows for each year.
--

SELECT
	YEAR([Date]) AS [Year],
	MIN(DISTINCT [Low]) AS [Minimum Low],
	MAX(DISTINCT [High]) AS [Maximum High]
FROM [dbo].[data]
GROUP BY
	YEAR([Date])
ORDER BY
	YEAR([Date]) ASC;

USE SP500Insights;
GO

--
-- 5. Average highs and lows for each decade.
--

SELECT
	DISTINCT ((YEAR([Date]) / 10) * 10) AS [Decade],
	AVG(DISTINCT [High]) AS [Average High],
	AVG(DISTINCT [Low]) AS [Average Low]
FROM [dbo].[data]
GROUP BY
	((YEAR([Date]) / 10) * 10)
ORDER BY
	((YEAR([Date]) / 10) * 10) ASC;
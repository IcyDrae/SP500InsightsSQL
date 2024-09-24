USE SP500Insights;
GO

--
-- 9. Maximum highs and minimum lows for each decade.
--

SELECT
	DISTINCT ((YEAR([Date]) / 10) * 10) AS [Decade],
	MIN(DISTINCT [Low]) AS [Minimum Low],
	MAX(DISTINCT [High]) AS [Maximum High]
FROM [dbo].[data]
GROUP BY
	((YEAR([Date]) / 10) * 10)
ORDER BY
	((YEAR([Date]) / 10) * 10) ASC;

USE SP500Insights;
GO

--
-- 3. Average open and close prices for each decade.
--

SELECT
	DISTINCT ((YEAR([Date]) / 10) * 10) AS [Decade],
	AVG(DISTINCT [Open]) AS [Average Open Price],
	AVG(DISTINCT [Close]) AS [Average Close Price]
FROM [dbo].[data]
GROUP BY
	((YEAR([Date]) / 10) * 10)
ORDER BY
	((YEAR([Date]) / 10) * 10) ASC;

USE SP500Insights;
GO

--
-- 10. Highest opening and closing prices for each year
-- and the amount of bullish or bearish days in that year.
--
-- If Close > Open -> Bullish
-- If Close < Open -> Bearish
--

SELECT
	DISTINCT YEAR([Date]) AS [Year],
	MAX(DISTINCT [Open]) AS [Highest Opening Price],
	MAX(DISTINCT [Close]) AS [Highest Closing Price],
	COUNT(CASE WHEN [Close] > [Open] THEN 1 END) AS [Bullish Days],
	COUNT(CASE WHEN [Close] < [Open] THEN 1 END) AS [Bearish Days]
FROM [dbo].[data]
WHERE
	YEAR([Date]) >= 2000
GROUP BY
	YEAR([Date])
ORDER BY
	YEAR([Date]) ASC;

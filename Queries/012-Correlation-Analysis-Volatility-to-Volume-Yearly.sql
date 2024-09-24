USE SP500Insights;
GO

--
-- 12. Correlation analysis:
-- Analyze how one variable (like trading volume) is related to another.
--
-- Hypothesis: Higher trading volumes correlate with larger price swings
-- (higher volatility). So, when the market is active,
-- prices fluctuate more significantly.
--

SELECT
	YEAR([Date]) AS [Year],
	MONTH([Date]) AS [Month],
	AVG([Open]) AS [Average Open],
	AVG([Close]) AS [Average Close],
	AVG([High]) AS [Average High],
	AVG([Low]) AS [Average Low],
	SUM([Volume]) AS [Total Volume],
	AVG([High] - [Low]) AS [Average Volatility]
FROM [dbo].[data]
WHERE
	YEAR([Date]) >= 2000
GROUP BY
	YEAR([Date]),
	MONTH([Date])
ORDER BY
	YEAR([Date]) DESC,
	MONTH([Date]);

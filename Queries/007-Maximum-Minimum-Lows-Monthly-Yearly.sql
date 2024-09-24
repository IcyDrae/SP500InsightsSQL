USE SP500Insights;
GO

--
-- 7. Maximum and minimum lows for each month of each year.
--

SELECT
	YEAR([Date]) AS [Year],
	MONTH([Date]) AS [Month],
	MAX(DISTINCT [Low]) AS [Maximum Low],
	MIN(DISTINCT [Low]) AS [Minimum Low]
FROM [dbo].[data]
GROUP BY
	YEAR([Date]),
	MONTH([Date])
ORDER BY
	YEAR([Date]) ASC,
	MONTH([Date]) ASC;

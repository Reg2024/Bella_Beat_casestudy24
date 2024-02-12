
SELECT DATEPART(DAY, [ActivityDate]) AS Day, ROUND(AVG(Calories), 2) AS Calories
FROM dailyActivity
GROUP BY DATEPART(DAY, [ActivityDate]);
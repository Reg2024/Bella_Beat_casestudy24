/*AvgStepsByWeekdays*/
SELECT 
    ActivityDate,
    ROUND(AVG(TotalSteps), 2) AS Average_Total_Steps
FROM 
    bellabeat.dbo.dailyActivity
GROUP BY 
    ActivityDate
ORDER BY 
    Average_Total_Steps DESC;
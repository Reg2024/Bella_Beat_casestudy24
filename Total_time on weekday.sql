SELECT 
    FORMAT(ActivityDate, 'dddd') AS Day_of_Week,
    SUM(CONVERT(INT, SedentaryMinutes)) AS Sedentary_Mins,
    SUM(CONVERT(INT, LightlyActiveMinutes)) AS LightlyActive_Mins, 
    SUM(CONVERT(INT, FairlyActiveMinutes)) AS FairlyActive_Mins,
    SUM(CONVERT(INT, VeryActiveMinutes)) AS VeryActive_Mins
FROM
    bellabeat.dbo.dailyActivity
GROUP BY FORMAT(ActivityDate, 'dddd');
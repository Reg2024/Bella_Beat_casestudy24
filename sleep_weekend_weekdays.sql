WITH bellabeatdbominuteSleep AS (
 SELECT 
    *,
    CAST(SleepDay AS DATE) AS default_date,
    DATEPART(WEEKDAY, SleepDay) AS dow_number,
    FORMAT(SleepDay, 'dddd') AS day_of_week,
    CASE 
        WHEN FORMAT(SleepDay, 'dddd') IN ('Sunday','Saturday') THEN 'Weekend'
        WHEN FORMAT(SleepDay, 'dddd') NOT IN ('Sunday','Saturday') THEN 'Weekday'
        ELSE 'ERROR'
    END AS part_of_week,
    TotalTimeInBed - TotalMinutesAsleep AS minutes_awake
 FROM
    bellabeat.dbo.sleep_day
)
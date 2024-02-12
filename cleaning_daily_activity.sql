SELECT * 
FROM
bellabeat.dbo.dailyActivity
select * FROM
bellabeat.dbo.

/*SELECT SUM(TotalDistance)
FROM 
bellabeat.dbo.dailyActivity*/

CREATE TABLE bellabeat.dbo.daily_activity_cleaned
(Id FLOAT, ActivityDate DATETIME2(7), TotalSteps FLOAT, TotalDistance FLOAT, LoggedActiveDistance FLOAT,VeryActiveDistance FLOAT, ModeratelyActiveDistance FLOAT, 
	LightlyActiveDistance FLOAT, SedentaryActiveDistance FLOAT, VeryActiveMinutes FLOAT, FairlyActiveMinutes FLOAT, LightlyActiveMinutes FLOAT, SedentaryActiveMinutes FLOAT,
	Calories FLOAT)

	INSERT INTO bellabeat.dbo.daily_activity_cleaned
	(Id, ActivityDate, TotalSteps, TotalDistance, LoggedActiveDistance,VeryActiveDistance, ModeratelyActiveDistance, 
	LightlyActiveDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryActiveMinutes,
	Calories)

SELECT 
	Id,
	ActivityDate,
	CAST(TotalSteps AS FLOAT) AS TotalSteps,
	CAST(TotalDistance AS FLOAT) AS TotalDistance,
	CAST(LoggedActiveDistance AS FLOAT) AS LoggedActiveDistance,
	CAST(VeryActiveDistance AS FLOAT) AS VeryActiveDistance,
	CAST(ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
	CAST(LightlyActiveDistance AS FLOAT) AS LightActiveDistance,
	CAST(SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
	CAST(VeryActiveMinutes AS FLOAT) AS VeryActiveMinutes,
	CAST(FairlyActiveMinutes AS FLOAT) AS FairlyActiveMinutes,
	CAST(LightlyActiveMinutes AS FLOAT) AS LightlyActiveMinutes,
	CAST(SedentaryActiveMinutes AS FLOAT) AS SedentaryActiveMinutes,
	CAST(Calories AS FLOAT) AS Calories

FROM bellabeat.dbo.daily_activity_cleaned
IF EXISTS (SELECT*                    --I always put this code after creating the table to drop it in case I run the code again
			FROM bellabeat.dbo.daily_activity_cleaned)

DROP TABLE bellabeat.dbo.daily_activity_cleaned

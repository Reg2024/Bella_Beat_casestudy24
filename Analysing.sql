/*calculationg no if users and daily averages
Tracking thier physical activity*/
SELECT 
	COUNT(DISTINCT Id) AS users_tracking_activity,
	
	AVG(TotalSteps) AS average_steps,
	AVG(TotalDistance) AS average_distance,
	AVG(Calories) AS average_calories

FROM
	bellabeat.dbo.daily_activity_cleaned

	

/*Tracking thier heart rate*/
	SELECT 
	COUNT(DISTINCT id) AS users_tracking_heartrate,
	AVG(Value) AS average_heartRate,
	MIN(Value) AS minimum_heartRate,
	MAX(value) AS maximum_heartRate
	FROM bellabeat.dbo.heartrate_seconds
	/*Tracking sleep*/
     SELECT 
	 COUNT (DISTINCT id) users_tracking_sleep,
	 AVG(TotalMinutesAsleep)/60.0 AS average_hours_asleep,
	 MIN(TotalMinutesAsleep)/60.0 AS minimum_hours_asleep,
	 MAX(TotalMinutesAsleep)/60.0 AS maximum_hours_asleep,
	 AVG(TotalTimeInBed)/60.0 AS average_hours_inBed
	 from bellabeat.dbo.sleep_day
	 
/*Tracking weight*/
SELECT
	COUNT(DISTINCT Id) AS users_tracking_weight,
	AVG(WeightKg) AS average_weight,
	MIN(WeightKg) AS minimum_weight,
	MAX(WeightKg) AS maximum_weight
FROM	
	bellabeat.dbo.weight_cleaned
	
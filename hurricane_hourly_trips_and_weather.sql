
WITH u1 AS(SELECT id, strftime("%Y-%m-%d",pickup_datetime) AS u1_day,
            strftime("%Y-%m-%d-%H",pickup_datetime) AS u1_hour
        FROM uber 
        WHERE u1_day >='2012-10-22' and u1_day <= '2012-10-30'
        UNION ALL
        SELECT id, strftime("%Y-%m-%d",pickup_datetime) AS u1_day,
            strftime("%Y-%m-%d-%H",pickup_datetime) AS u1_hour
        FROM yellow_taxi 
        WHERE u1_day >='2012-10-22' and u1_day <= '2012-10-30'
        ),
u2 AS (SELECT HourlyPrecipitation AS precipitation, HourlyWindSpeed as wind, 
       strftime("%Y-%m-%d",DATE) AS u2_day,strftime("%Y-%m-%d-%H",DATE) AS u2_hour
       FROM weather_hourly
       WHERE u2_day >='2012-10-22' and u2_day <= '2012-10-30'
       ),
u3 AS(SELECT COUNT(Id) as trips,u1_hour
      FROM u1
      GROUP BY u1_hour
      )
SELECT u1_hour, trips, precipitation, wind
FROM u3
JOIN u2 ON u1_hour = u2_hour
ORDER BY u1_hour

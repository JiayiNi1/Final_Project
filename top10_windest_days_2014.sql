
WITH u1 AS(SELECT id, strftime("%Y-%m-%d",pickup_datetime) AS day 
        FROM uber 
        WHERE strftime("%Y",pickup_datetime) ='2014'
        UNION ALL
        SELECT id, strftime("%Y-%m-%d",pickup_datetime) AS day 
        FROM yellow_taxi 
        WHERE strftime("%Y",pickup_datetime) ='2014'
        ),
u2 AS (SELECT COUNT(Id) as count,day as u2_day FROM u1 GROUP BY day),

u3 AS (SELECT DailyAverageWindSpeed AS wind, strftime("%Y-%m-%d",DATE) AS wind_day 
       FROM weather_daily
       WHERE strftime("%Y",DATE) ='2014')
SELECT wind, wind_day, count
FROM u3
INNER JOIN u2 ON u2_day = wind_day
ORDER BY wind DESC LIMIT 10

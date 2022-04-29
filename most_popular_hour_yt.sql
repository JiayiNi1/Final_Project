
SELECT COUNT(Id) AS count,strftime ('%H',pickup_datetime) AS hour
FROM yellow_taxi
GROUP BY hour
ORDER BY count DESC LIMIT 1

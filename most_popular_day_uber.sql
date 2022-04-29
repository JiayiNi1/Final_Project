
SELECT COUNT(Id) AS count,strftime ('%w',pickup_datetime) AS day
FROM uber
GROUP BY day
ORDER BY count DESC LIMIT 1

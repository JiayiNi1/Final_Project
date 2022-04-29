
WITH u AS (SELECT COUNT(Id) as count,strftime("%Y-%m-%d",pickup_datetime) as day, AVG(distance) as distance 
           FROM uber
           WHERE strftime("%Y",pickup_datetime) = '2009'
           GROUP BY day
           UNION ALL
           SELECT COUNT(Id) as count,strftime("%Y-%m-%d",pickup_datetime) as day, AVG(distance) as distance
           FROM yellow_taxi
           WHERE strftime("%Y",pickup_datetime) = '2009'
           GROUP BY day)
SELECT day, distance FROM u
ORDER BY count LIMIT 10

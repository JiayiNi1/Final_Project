
WITH u AS(SELECT distance FROM uber UNION ALL SELECT distance from yellow_taxi 
             WHERE strftime ('%Y-%m',pickup_datetime) = '2013-07'),
p AS(SELECT distance, NTILE(20) OVER (ORDER BY distance DESC) AS percentile
           FROM u)
SELECT MAX(distance) as distance
FROM p
GROUP BY percentile LIMIT 1;

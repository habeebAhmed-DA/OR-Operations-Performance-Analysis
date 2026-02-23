SELECT * FROM or_utilize_schema.or_utilization_csv;

Select count(`Encounter ID`)  
From or_utilization_csv;

SELECT `OR Suite` , count(`Encounter ID`) as total_admit
From or_utilization_csv
group by `OR Suite`
order by total_admit desc;

SELECT `Service` , count(`Encounter ID`) as total_serviced
From or_utilization_csv
group by `Service`
order by total_serviced desc;

SELECT `Month` , `Date`, count(`Encounter ID`) as daily_admit
From or_utilization_csv
group by `Month` , `Date`
order by daily_admit desc;

Select `Service`, avg(`Booked Time (min)`)
From or_utilization_csv
group by `Service`;


SELECT Service, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`Start Time`, '%h:%i %p'), STR_TO_DATE(`End Time`, '%h:%i %p'))),2) AS Avg_Actual_Duration_Minutes
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL 
  AND `End Time` IS NOT NULL
GROUP BY Service
ORDER BY Avg_Actual_Duration_Minutes DESC;
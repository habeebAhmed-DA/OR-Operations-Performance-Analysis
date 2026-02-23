SELECT * FROM or_utilize_schema.or_utilization_csv;

-- TOTAL SURG BASED ON CPT
SELECT `CPT Code` , `CPT Description`, count(`Encounter ID`) as total_surg
from or_utilization_csv
group by `CPT Code`, 	`CPT Description`
order by total_surg desc;

-- TOTAL DURATION BASED ON CPT
SELECT `CPT Code`, `CPT Description`, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`Start Time`, '%h:%i %p'), STR_TO_DATE(`End Time`, '%h:%i %p'))),2) AS Avg_Actual_Duration_CPT
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL 
  AND `End Time` IS NOT NULL
GROUP BY `CPT Code`, `CPT Description`
ORDER BY Avg_Actual_Duration_CPT DESC;

-- AVG DELAY BASED ON CPT
SELECT `CPT Code`, `CPT Description`, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`OR Schedule`, '%h:%i %p'),STR_TO_DATE(`Start Time`, '%h:%i %p'))),2) AS Avg_Delay_CPT
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
AND `OR Schedule` IS NOT NULL
GROUP BY `CPT Code`, `CPT Description`
ORDER BY Avg_Delay_CPT DESC;

-- AVG OVERRUN TIME BASED ON CPT
SELECT `CPT Code`, `CPT Description`, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`Start Time`, '%h:%i %p'),STR_TO_DATE(`End Time`, '%h:%i %p')) 
- `Booked Time (min)`),2) AS Avg_Overrun_CPT
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
  AND `End Time` IS NOT NULL
GROUP BY `CPT Code`, `CPT Description`
ORDER BY Avg_Overrun_CPT DESC;
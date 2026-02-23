SELECT * FROM or_utilize_schema.or_utilization_csv;

-- TOP 10 LONGEST SURGURIES
SELECT `Encounter ID`,Service, `OR Suite`, `CPT Code`, round(TIMESTAMPDIFF(MINUTE, STR_TO_DATE(`Start Time`, '%h:%i %p') , STR_TO_DATE(`End Time`, '%h:%i %p'))) AS Longest_Surgery
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
AND `End Time` IS NOT NULL
ORDER BY Longest_Surgery DESC
limit 10;

-- AVG OVERRUN PER OR SUITE
SELECT `OR Suite`, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`Start Time`, '%h:%i %p'),STR_TO_DATE(`End Time`, '%h:%i %p')) 
- `Booked Time (min)`),2) AS Avg_Overrun_Minutes
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
  AND `End Time` IS NOT NULL
GROUP BY `OR Suite`
ORDER BY Avg_Overrun_Minutes DESC;
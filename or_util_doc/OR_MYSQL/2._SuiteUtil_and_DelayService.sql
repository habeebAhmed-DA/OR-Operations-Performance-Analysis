SELECT * FROM or_utilize_schema.or_utilization_csv;

-- HIGHEST OR SUITE  UTILIZATION 
SELECT `OR Suite`, SUM(TIMESTAMPDIFF(MINUTE, STR_TO_DATE(`Start Time`, '%h:%i %p'), STR_TO_DATE(`End Time`, '%h:%i %p'))) AS Total_Surgery_Minutes
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
AND `End Time` IS NOT NULL
GROUP BY `OR Suite`
ORDER BY Total_Surgery_Minutes DESC;


-- AVG DELAY IN EVERY SERVICE
SELECT Service, ROUND(AVG(TIMESTAMPDIFF(MINUTE,STR_TO_DATE(`OR Schedule`, '%h:%i %p'),STR_TO_DATE(`Start Time`, '%h:%i %p'))),2) AS Avg_Start_Delay_Minutes
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
AND `OR Schedule` IS NOT NULL
GROUP BY Service
ORDER BY Avg_Start_Delay_Minutes DESC;
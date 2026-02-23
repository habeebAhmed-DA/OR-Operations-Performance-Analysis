SELECT * FROM or_utilize_schema.or_utilization_csv;

-- highest utilization starting time 
SELECT `OR Schedule`,  count(`Encounter ID`) as time_slots
from or_utilization_csv
group by `OR Schedule`
order by time_slots desc;

-- which time have more patients morning or evening 
SELECT CASE 
WHEN HOUR(STR_TO_DATE(`Start Time`, '%h:%i %p')) < 12 THEN 'Morning'
ELSE 'Afternoon'
END AS Time_of_Day,
COUNT(`Encounter ID`) AS Total_Cases
FROM or_utilization_csv
WHERE `Start Time` IS NOT NULL
  AND `OR Schedule` IS NOT NULL
GROUP BY Time_of_Day;
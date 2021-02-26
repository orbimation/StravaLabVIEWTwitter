-- Most distance covered by Athlete in single activity for each type - Walk

Select Athlete, Team, Type, 
(Distance_km) AS Distance from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (Type = 'Walk')

Order by Distance desc
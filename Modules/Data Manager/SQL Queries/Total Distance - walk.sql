-- Most distance covered total for each type - Walk

Select Athlete, Team, Type, 
Sum(Distance_km) AS Distance from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (Type = 'Walk')
Group By Athlete
Order by Distance desc
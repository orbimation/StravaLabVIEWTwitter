-- Most distance covered total for each type - Ride without handicap scoring

Select Athlete, Team, Type, 
Sum(Distance_m/1000) AS Distance from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (Type = 'Ride')
Group By Athlete
Order by Distance desc
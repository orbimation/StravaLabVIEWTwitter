-- Most distance covered by Athlete in single activity for each type - Ride without handicap scoring

Select Athlete, Team, Type,
(Distance_m/1000) AS Distance from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (Type = 'Ride')

Order by Distance desc
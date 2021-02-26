-- Most Time by Athlete in single activity for each type

Select Athlete, Team, Type, Distance_m/1000 AS Distance_KM,
ElapsedTime_s AS Spent
, round(((ElapsedTime_s))/3600.0, 2) AS Spent_hr
 from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (ElapsedTime_s <> '1')

Order by Type desc, Spent desc
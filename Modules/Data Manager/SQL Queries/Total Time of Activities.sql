-- Most time covered total

Select Athlete, Team, Type, 
Sum(ElapsedTime_s) AS Spent
, round((Sum(ElapsedTime_s))/3600.0, 2) AS Spent_hr
--, ("Sum(ElapsedTime_s)"/3600) || ':' || strftime('%M:%S', "Sum(ElapsedTime_s)"/86400.0) AS "Spent_" 
from Activities 
Where (Valid = 1 AND Team <> 'Unknown') --AND (Type = 'Walk')
Group By Athlete, Type
Order by Type desc, Spent 
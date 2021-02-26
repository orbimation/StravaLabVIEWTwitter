-- Most number of activities

Select Athlete, Team, Type, 
count(Valid) As Number from Activities 
Where (Valid = 1 AND Team <> 'Unknown') AND (Type = 'Walk')
Group by Athlete
Order by Number desc
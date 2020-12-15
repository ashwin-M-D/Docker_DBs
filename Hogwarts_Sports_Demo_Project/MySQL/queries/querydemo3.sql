-- who won tournament 302 and how many games did they win
select A.Team_Name
from team as A, Tournament_Results as B
where A.Team_ID = B.Team_ID
and B.Tourn_ID = 302
order by B.Games_Won desc
limit 1 
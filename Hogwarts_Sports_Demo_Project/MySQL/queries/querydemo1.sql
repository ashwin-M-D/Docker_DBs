
-- Query 1
-- How much money do the tournaments gross on average?
select B.sport, round(sum(A.teams_in_sport)*avg(B.price)/count(*)) as avg_tourn_rev
from (select R_Tourn_ID, count(*) as teams_in_sport
from registration
group by R_Tourn_ID) as A, tournament as B
where A.R_Tourn_ID = B.Tourn_ID
group by B.sport
order by avg_tourn_rev desc

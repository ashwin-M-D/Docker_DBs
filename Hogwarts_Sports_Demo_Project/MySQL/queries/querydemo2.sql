-- Query 2
-- Find total games won by every player
-- Creating View with all players and games won 
/*
create view Player_Wins as
select players.P_HOGID,
case when wins.total_games_won is not null then wins.total_games_won
else 0 end as total_games_won
from
(select E.Plays_P_HOGID, count(*) as total_games_won
from 
	(	-- Find Winner of Game
	select B.PG_Tourn_ID as tourn_id, B.PG_Game_No as game_number, 
	(case 
	when A.Score_team_home > A.Score_team_away then B.Team_ID_Home
	when A.Score_team_home < A.Score_team_away then B.Team_ID_Away
	end) as winner
	from game as A, play_game as B
	where B.PG_Tourn_ID = A.G_Tourn_ID
	and B.PG_Game_No = A.Game_No)
as D, plays_for as E
where D.winner = E.Plays_Team_ID
group by E.Plays_P_HOGID) as wins right outer join players
on players.P_HOGID = wins.Plays_P_HOGID
*/

-- join with names
select A.Name, B.total_games_won
from users as A, Player_Wins as B
where A.HOGID = B.P_HOGID
order by total_games_won desc
limit 5



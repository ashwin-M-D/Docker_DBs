-- Find people who have attended indoor classes with ron (COVID)

create view Tournament_Results as
select E.R_Tourn_ID as Tourn_ID, R_Team_ID as Team_ID, case when games_won is not null then games_won else 0 end as Games_Won
from (select tourn_ID, count(*) as games_won, winner as Team_ID
	from
		(select B.PG_Tourn_ID as tourn_id, B.PG_Game_No as game_number, 
		(case 
		when A.Score_team_home > A.Score_team_away then B.Team_ID_Home
		when A.Score_team_home < A.Score_team_away then B.Team_ID_Away
		end) as winner
		from game as A, play_game as B
		where B.PG_Tourn_ID = A.G_Tourn_ID
		and B.PG_Game_No = A.Game_No) as C 
	group by C.winner, C.tourn_ID) as D right outer join registration as E
on D.Team_ID = E.R_Team_ID and D.tourn_ID = E.R_Tourn_ID





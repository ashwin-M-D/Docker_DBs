-- who is the instructor who earns the school the most money
select U1.Name, sum(class_profit) as profit
from (
	select C2.Class_ID, C2.Class_Cost*count(A1.A_P_HOGID) as class_profit, C2.I_HOGID
    from class as C2, attend as A1
    where A1.A_Class_ID = C2.Class_ID
    group by A1.A_Class_ID) as C1,
users as U1
where U1.HOGID = C1.I_HOGID
group by U1.Name
order by profit desc
limit 1


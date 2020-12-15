-- find all ron's classmates

select U1.Name
from users as U1
where U1.HOGID in (
	select A1.A_P_HOGID 
    from attend as A1
    where A1.A_Class_ID in (
		select A2.A_Class_ID
        from attend as A2, users as U2
        where U2.HOGID = A2.A_P_HOGID
        and U2.Name = "Ron")
	)
    
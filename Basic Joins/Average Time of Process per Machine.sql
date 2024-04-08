
select e.machine_id,round(avg(e.timestamp -s.timestamp ),3) as processing_time 
from(select machine_id,process_id,timestamp 
from Activity
where activity_type ='end'
) e,(select machine_id,process_id,timestamp 
from Activity
where activity_type ='start'
) s
where e.machine_id =s.machine_id  and e.process_id =s.process_id 
group by e.machine_id

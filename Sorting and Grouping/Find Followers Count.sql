select user_id, count(user_id) as followers_count
from Followers 
group by user_id
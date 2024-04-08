SELECT user_id ,    
 upper(SUBSTRING(name, 1, 1))+lower(SUBSTRING(name, 2,LEN(name))) AS name  
FROM Users
order by user_id

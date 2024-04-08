select w1.id
from Weather w1, weather w2
where w1.recordDate=DATEADD(day, 1, w2.recordDate) and w1.temperature>w2.temperature   
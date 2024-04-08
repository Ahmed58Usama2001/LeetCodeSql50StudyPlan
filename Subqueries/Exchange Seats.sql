with temp as(
    select count(id)  as seat_count
    from seat
) 
select s1.id,case
             when s1.id%2<>0 and s1.id+1 <= (SELECT seat_count FROM temp)
             then
                                    (select s2.student
                                    from seat s2
                                    where s1.id+1=s2.id)
             when s1.id%2=0
             then
                                    (select s2.student
                                    from seat s2
                                    where s1.id-1=s2.id)
             else 
                         (select s2.student
                          from seat s2
                          where s2.id+1 > (SELECT seat_count FROM temp))      
             end as student 

from seat s1
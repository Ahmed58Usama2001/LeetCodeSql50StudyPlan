select ROUND(sum(i.tiv_2016), 2) as tiv_2016
from Insurance as i
where exists (select *
              from Insurance as i2
              where i.tiv_2015 = i2.tiv_2015
                    and i.pid <> i2.pid)
    and 

    not exists (select *
                    from Insurance as i2
                    where (i.lat = i2.lat
                            and i.lon = i2.lon)
                          and i.pid <> i2.pid) 
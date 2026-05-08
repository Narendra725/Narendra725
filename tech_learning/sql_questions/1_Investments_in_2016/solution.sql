
with cte as(select tiv_2016, 
count(*) over(partition by tiv_2015) as tiv_2015_cnt,
count(*) over(partition by lon,lat) as loc_count
from Insurance
)
select round(sum(tiv_2016),2) as tiv_2016 from cte where tiv_2015_cnt > 1
and loc_count = 1;

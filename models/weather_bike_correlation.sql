WITH CTE AS (

select
t.*,
w.*
from {{ ref('fact_trip') }} t
left join {{ ref('daily_weather') }} w
on t.TRIP_DATE = w.DAILY_WEATHER


)


select
*
from CTE

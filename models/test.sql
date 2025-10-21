select
*
from {{ ref('my_second_dbt_model') }} --{{source('demo', 'bike')}}

limit 10


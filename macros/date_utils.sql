{% macro get_season(x) %}

CASE WHEN MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
Then 'WINTER'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (3,4,5)
Then 'SPRING'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,7,8)
Then 'SUMMER'
ELSE 'AUTUMN'
END

{% endmacro %}

{% macro day_type(x) %}

CASE WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat','Sun')
Then 'WEEKEND'
ELSE 'BUSINESSDAY' 
END

{% endmacro %}
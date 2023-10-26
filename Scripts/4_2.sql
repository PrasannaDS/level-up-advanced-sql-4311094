
with sale as (select strftime('%m',soldDate) AS soldmonth,
                     strftime('%Y',soldDate) AS soldyear,
                     sum(salesAmount) as salesAmount
              from sales
              group by soldmonth, soldyear
)
select soldyear, soldmonth, salesAmount,
sum(salesAmount) over(partition by soldyear order by soldyear, soldmonth desc) as annualTotal
from sale

SELECT * from employee limit 10
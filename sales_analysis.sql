
/* =========================================
   Sales & Profit Analysis
   Author: Khalid
   Description: Analyze sales, profit, and customer behavior
   ========================================= */
   select DB_NAME();
select * from dbo.[data (3)]

select count (*) 
from dbo.[data (3)];

select top 5 *
from dbo.[data (3)];

select distinct City
from dbo.[data (3)]

select
City,
count(*)as total_transactions
from dbo.[data (3)]
GROUP BY City;

select 
city,
sum(cast(total as float)) as total_sales
from dbo.[data (3)]
group by City;

select 
City,
avg(cast(total as float))
from dbo.[data (3)]
group by City;

SELECT 
    [Product line],
    SUM(CASt(total as float )) as total_sales
FROM dbo.[data (3)]
GROUP BY [Product line]
ORDER BY total_sales desc;

select
[Product line],
count(*) as total_transactions
from dbo.[data (3)]
group by [Product line]
order by total_transactions desc;

select
[Customer type],
avg (cast(total as float)) as avg_sale
from dbo.[data (3)]
group by [Customer type];

select 
[Customer type],
[Product line],
sum(cast(total as float)) as total_sales
from dbo.[data (3)]
group by 
[Customer type],
[Product line]
order by 
[Customer type],
total_sales desc;

 select 
 sum(cast([gross income] as float)) as total_profit
 from dbo.[data (3)];


select
    [Product line],
    sum(cast([gross income] as float)) as total_profit
from dbo.[data (3)]
group by [Product line]
order by total_profit desc;

select 
[Customer type],
[Product line],
sum(cast([gross income] as float)) as total_profit
from dbo.[data (3)]
group by 
[Customer type],
[Product line]
order by 
total_profit desc;

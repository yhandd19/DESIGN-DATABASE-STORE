select monthname(date), avg(total_price) as rata_rata from transaction
    where DATEDIFF (date, '2022-01-01 getdate()')
    group by month(date);
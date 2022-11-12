select monthname(date), avg(total_price) as rata_rata from transaction
group by MONTH(date);
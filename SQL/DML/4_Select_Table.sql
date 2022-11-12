select * from customer where id = 1;

select count(id), gender
    from customer 
    group by gender;

 select * from transaction where month(date) = 1;
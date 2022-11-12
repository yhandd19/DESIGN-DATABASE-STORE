select category.name, count(category_id) as jumlah_di_order
     from product
     join category
     on category.id = product.category_id
     group by category_id
     having count(category_id) > 2;
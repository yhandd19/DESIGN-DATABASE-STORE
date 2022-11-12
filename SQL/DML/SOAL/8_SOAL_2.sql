select transaction_detail.product_id, product.name, count(transaction_detail.product_id) as jumlah_order
from transaction_detail 
join product on transaction_detail.product_id = product.id 
group by transaction_detail.product_id ORDER BY `jumlah_order` DESC limit 3;



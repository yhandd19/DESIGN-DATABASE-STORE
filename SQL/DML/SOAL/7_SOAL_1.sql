select customer.name,product.name as mengorder from customer
    JOIN transaction
    on customer.id = transaction.customer_id
    JOIN Transaction_detail
    on transaction.id = transaction_detail.transaction_id
    JOIN Product
    on transaction_detail.product_id = product.id
    order by customer.name asc;
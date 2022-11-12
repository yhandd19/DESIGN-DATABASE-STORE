
CREATE TABLE Customer(
    id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(40), 
    gender ENUM ('male', 'female'),
    address VARCHAR(100)
);


CREATE TABLE Transaction(
    id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date DATE, 
    customer_id INT(2),
    total_price INT
);

CREATE TABLE Transaction_detail(
    id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_id INT(2),
    transaction_id INT(2),
    quantity INT(2),
    total INT
);

CREATE TABLE Product(
    id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    category_id INT(2),
    price INT
);

CREATE TABLE Category(
    id INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    description VARCHAR(100),
    available TINYINT(1)
);

-- FOREIGN KEY 

ALTER Table Transaction ADD FOREIGN KEY (customer_id) REFERENCES Customer(id);

ALTER Table Transaction_detail ADD FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER Table Transaction_detail ADD FOREIGN KEY (transaction_id) REFERENCES Transaction(id);

ALTER Table Product ADD FOREIGN KEY (category_id) REFERENCES Category(id);
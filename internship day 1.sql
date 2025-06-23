
create database E_commerce
use E_commerce

CREATE TABLE supplier (
    supplier_id VARCHAR(200) PRIMARY KEY,
    company_name VARCHAR(250) NOT NULL,
    pincode INT NOT NULL,
    address VARCHAR(300) NOT NULL,
    city VARCHAR(200),
    state VARCHAR(200),
    country VARCHAR(200),
    phone BIGINT,
    email VARCHAR(300)
);

CREATE TABLE product_details (
    pd_id VARCHAR(100) PRIMARY KEY,
    pd_name VARCHAR(250) NOT NULL,
    price INT NOT NULL check(price>=0),
    pd_category VARCHAR(250) NOT NULL,
    pd_brand VARCHAR(250),
    pd_warranty VARCHAR(200),
    pd_stock INT,
    pd_rating DECIMAL(2,1) check(pd_rating between 0 and 5) ,
    supplier_id VARCHAR(200),
    CONSTRAINT FK_product_supplier FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id)
);

CREATE TABLE customer_details (
    cust_id VARCHAR(100) PRIMARY KEY,
    cust_name VARCHAR(250) NOT NULL,
    cust_mobile_num BIGINT NOT NULL,
    cust_mail VARCHAR(300),
    cust_pincode INT not null,
    cust_address VARCHAR(300) NOT NULL
);

CREATE TABLE order_details (
    order_id VARCHAR(250) PRIMARY KEY,
    order_value DECIMAL(9,2) NOT NULL,
    order_date DATE NOT NULL,
    expect_delivery_date DATE NOT NULL,
    status VARCHAR(200) NOT NULL,
    delivery_date DATE NOT NULL,
    payment_method VARCHAR(200) NOT NULL,
    tracking_id VARCHAR(250)
);

CREATE TABLE purchase_details (
    cust_id VARCHAR(100) not null,
    pd_id VARCHAR(100) not null,
    pd_quantity INT check( pd_quantity>0) not null,
    total_price DECIMAL(9,2) not null,
    order_id VARCHAR(250) not null,
    CONSTRAINT FK_purchase_customer FOREIGN KEY (cust_id)
        REFERENCES customer_details(cust_id),
    CONSTRAINT FK_purchase_product FOREIGN KEY (pd_id)
        REFERENCES product_details(pd_id),
    CONSTRAINT FK_purchase_order FOREIGN KEY (order_id)
        REFERENCES order_details(order_id)
);


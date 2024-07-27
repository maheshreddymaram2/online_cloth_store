//table 1 items
create table Items(
item_id int auto_increment primary key,
item_name varchar(255) not null,
description text,
price decimal(10,2) not null,
item_quantity int not null,
category_id int,
brand_id int,
image_url varchar(255),
FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (brand_id) REFERENCES Brands(brand_id)
);

//table 2 categories
create table categories(
category_id int auto_increment primary key,
category_name varchar(255) not null);

//table 3 Brands
create table brands(
brand_id int auto_increment primary key,
brand_name varchar(255) not null
);

//table 4 customers
create table customers(
customer_id int auto_increment primary key,
name varchar(255) not null,
email varchar(255),
mob_no varchar(255),
address varchar(255)
);

//table 5 
create table orders(
order_id int auto_increment primary key,
total_amount decimal(10,2)not null,
status ENUM('Pending', 'Processing', 'Shipped', 'Completed') DEFAULT 'Pending',
customer_id int,
order_date Date not null,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

//table 6
create table order_details(
order_detail_id int auto_increment primary key,
order_id int,
item_id int,
quantity int not null,
price decimal(10,2) not null,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

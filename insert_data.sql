//table 1 Items sample values

INSERT INTO Items(item_name,description,price,item_quantity,category_id,brand_id,image_url)
values('dress','light weight western dress',2000.50,10,1,1,'https://images.app.goo.gl/S4WYQUvitm9T6MGU6'),
('jeanspant','light weight jeans',1500.50,20,2,2,'https://www.cubmcpaws.com/boys-dnmpants-darkblue-dnmp88dbl-8906.html');

//table 2 categories sample values

INSERT INTO Categories (category_name) VALUES ('Men'), ('Women'), ('Kids');

//table 3 brands sample values

INSERT INTO Brands (brand_name) VALUES ('us polo'),('Allen solly'),('Nike');

//table 4 customers sample values

INSERT INTO Customers (Name,email,mob_no,address) 
VALUES 
('John','john.doe@example.com', '1234567890', '123 Elm St, Springfield'),
('JaneSmith', 'jane.smith@example.com', '0987654321', '456 Oak St, Springfield');

//table 5 orders sample values

INSERT INTO Orders (order_status,total_amount,status,customer_id,order_date)
VALUES 
('not delivered',100.50,'pending',1,'2024-07-27'),
('delivered',150.30,'completed',2,'2024-07-23');

// table 6 order_details sample values 
  
INSERT INTO order_details(order_id,item_id,quantity,price)
VALUES 
(1, 1, 1, 59.99), 
(1, 2, 1, 29.99),
(2, 2, 1, 29.99);

// view orders for a customer sample values
  
SELECT o.order_id, o.order_date, o.status, o.total_amount 
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.email = 'john.doe@example.com';

//Update Stock Quantity After an Order sample values

UPDATE items 
SET item_quantity = item_quantity - 1 
WHERE item_id = 1;

// delete a item sample 
DELETE FROM items WHERE item_id = 1;

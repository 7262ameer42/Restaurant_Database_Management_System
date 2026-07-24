CREATE DATABASE SingleRestaurantDB;
USE SingleRestaurantDB;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);
SELECT * FROM singlerestaurantdb.customers;

CREATE TABLE Food_Menu (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    availability VARCHAR(20)
);
SELECT * FROM singlerestaurantdb.food_menu;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
SELECT * FROM singlerestaurantdb.Orders;

CREATE TABLE Order_Details (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    food_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),

    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (food_id) REFERENCES Food_Menu(food_id)
);
SELECT * FROM singlerestaurantdb.Order_Details;

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),

    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
SELECT * FROM singlerestaurantdb.Payments;

INSERT INTO Customers (name, phone, email, address)
VALUES
('Ali', '03001234567', 'ali@gmail.com', 'Abbottabad'),
('Sara', '03123456789', 'sara@gmail.com', 'Islamabad');
SELECT * FROM singlerestaurantdb.Customers;

INSERT INTO Food_Menu (food_name, category, price, availability)
VALUES
('Zinger Burger', 'Burger', 500, 'Available'),
('Chicken Pizza', 'Pizza', 1200, 'Available'),
('Fries', 'Sides', 200, 'Available');
SELECT * FROM singlerestaurantdb.food_menu;

INSERT INTO Orders (customer_id, order_date, total_amount, status)
VALUES
(1, '2026-05-20', 1700, 'Delivered');
SELECT * FROM singlerestaurantdb.orders;

INSERT INTO Order_Details (order_id, food_id, quantity, subtotal)
VALUES
(1, 1, 1, 500),
(1, 2, 1, 1200);
SELECT * FROM singlerestaurantdb.order_Details;

INSERT INTO Payments (order_id, payment_method, payment_status)
VALUES
(1, 'Cash', 'Paid');
SELECT * FROM singlerestaurantdb.payments;

SELECT c.name, o.order_id, o.total_amount, o.status
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

SELECT o.order_id, f.food_name, od.quantity, od.subtotal
FROM Orders o
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Food_Menu f ON od.food_id = f.food_id;

SELECT SUM(total_amount) AS total_sales
FROM Orders;
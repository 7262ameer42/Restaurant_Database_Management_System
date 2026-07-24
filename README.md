# 🍽️ Single Restaurant Database Management System

A MySQL database project developed to manage restaurant operations, including customers, the food menu, orders, order details, and payments.

## 📋 Overview

This project models the core operations of a single restaurant — from customer records to order processing and payment tracking — using a relational database built in MySQL.

## ✨ Features

- 👤 Customer management
- 🍕 Food menu management
- 🧾 Order management
- 💳 Payment tracking
- 🔗 SQL joins across multiple tables
- 📊 Aggregate functions (e.g. total sales)
- 🗄️ Relational database design with foreign key constraints

## 🗃️ Database Tables

| Table | Description |
|---|---|
| 👥 `Customers` | Stores customer details (name, phone, email, address) |
| 🍔 `Food_Menu` | Stores menu items, category, price, and availability |
| 📦 `Orders` | Stores order records linked to customers |
| 📝 `Order_Details` | Stores individual food items within each order |
| 💰 `Payments` | Stores payment method and status for each order |

## 🧩 ER Diagram

See [`database/ER_Diagram.png`]()for the full entity-relationship diagram, and [`database/Database_Schema.pdf`]() for detailed schema documentation.

## 🛠️ Technologies

- 🐬 MySQL
- 🧰 MySQL Workbench
- 📜 SQL

## 🚀 How to Run

1. 🖥️ Open MySQL Workbench.
2. 📂 Open [`database/SingleRestaurantDB.sql`]().
3. ▶️ Execute the script.
4. ✅ The database, tables, and sample data will be created automatically.

## 🔍 Sample Queries

- 👥➡️📦 Customer orders (`JOIN` between `Customers` and `Orders`)
- 📦➡️📝➡️🍔 Order details with food items (`JOIN` across `Orders`, `Order_Details`, `Food_Menu`)
- 💵 Total sales (aggregate `SUM` on `Orders`)

## 📸 Screenshots

See the [`screenshots/`]() folder for table data and query outputs:

- 🖼️ `Customers.png`
- 🖼️ `Food_Menu.png`
- 🖼️ `Orders.png`
- 🖼️ `Join_Query1.png`
- 🖼️ `Join_Query2.png`
- 🖼️ `Total_Sales.png`

## 📄 Project Report

See [`docs/Project_Report.pdf`]() for full documentation.

## 👤 Author

**Muhammad Ameer Abdullah**

## 📜 License

This project is licensed under the [MIT License]().

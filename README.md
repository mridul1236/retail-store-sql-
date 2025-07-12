# 🛒 Retail Store SQL Project

## 📌 Project Overview
This is a beginner-friendly SQL project simulating a small retail store's sales system. It demonstrates essential SQL skills by creating a normalized database, inserting mock data, and running analytical queries to gain business insights like customer behavior and product performance.

The goal is to showcase understanding of SQL basics such as table creation, relationships, data manipulation, and data analysis using SELECT queries.

---

## 🗃️ Table Descriptions

1. **Customers**
   - Stores customer details.
   - Columns: `id`, `first_name`, `last_name`, `city`

2. **Products**
   - Stores product information.
   - Columns: `id`, `name`, `category`, `price`

3. **Orders**
   - Tracks each customer order.
   - Columns: `id`, `customer_id`, `order_date`, `total`
   - Foreign Key: `customer_id` → Customers

4. **OrderItems**
   - Represents individual items in each order.
   - Columns: `order_id`, `product_id`, `quantity`
   - Foreign Keys: `order_id` → Orders, `product_id` → Products

---

## ⚙️ Instructions to Run SQL Files

1. Open your MySQL Workbench or any SQL tool.
2. **Run `schema.sql`** to create the tables.
3. **Run `sample_data.sql`** to insert mock data into the tables.
4. **Run `queries.sql`** to execute analysis queries and view results.

> Make sure to run the `USE database_name;` command if needed to select the correct database.

---

## 🧠 Skills Demonstrated

- ✅ SQL DDL (CREATE TABLE, PRIMARY KEY, FOREIGN KEY)
- ✅ SQL DML (INSERT INTO)
- ✅ Joins (INNER JOIN, LEFT JOIN)
- ✅ Aggregation (SUM, COUNT, AVG, GROUP BY)
- ✅ Subqueries and HAVING clause
- ✅ Basic reporting and filtering with WHERE, ORDER BY, LIMIT

---

## 🏁 Outcome
This project simulates a real-world retail scenario and helps build foundational SQL skills. It's a great addition to any beginner’s resume or GitHub portfolio.

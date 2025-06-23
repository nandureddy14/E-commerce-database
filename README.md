# E-commerce-database

🛒 E-Commerce Database Schema
This project provides a well-structured relational database schema for an e-commerce application, created using SQL Server. The schema models core entities such as suppliers, products, customers, orders, and purchases with clearly defined relationships and constraints.
📁 Database Overview
Database Name: E_commerce
This schema consists of the following tables:
- supplier: Stores details about product suppliers.
- product_details: Contains product listings with pricing, category, stock, and supplier linkage.
- customer_details: Holds basic information about registered customers.
- order_details: Manages order records, including status, payment method, and delivery tracking.
- purchase_details: A junction table mapping customers to products and orders, with quantity and cost tracking.
🔗 Relationships
- A product is linked to a supplier.
- A customer can place multiple orders.
- A purchase connects a customer, a product, and an order, forming the core of the transactional data.
⚙️ Features
- Designed with data integrity in mind using PRIMARY KEY and FOREIGN KEY constraints.
- Includes data validation through CHECK constraints (e.g., price must be non-negative, ratings between 0–5).
- Easy to expand for inventory management, payment integration, and analytics.
📦 Use Case
Ideal for learning relational database design or as a backend component for an e-commerce web or mobile application.

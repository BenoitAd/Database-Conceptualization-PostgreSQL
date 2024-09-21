# Structured Ecommerce Database Design
## Project Overview
This project is aimed at showcasing my ability to conceptualize, design, and implement a structured relational database using PostgreSQL. The database is designed to support a typical ecommerce platform, including the management of users, products, orders, payments, and more. This repository includes the database schema, an SQL script for initial database setup, and a visual representation of the database structure in the form of an UML diagram.

## Objectives
The goal of this project is to demonstrate the following skills:

- **Database Design & Conceptualization**: Ability to create a structured and efficient relational database for an ecommerce platform.
- **Relational Data Modeling**: Crafting tables and defining their relationships using proper cardinalities and action verbs.
- **SQL Schema & Deployment**: Writing an SQL script to deploy the database with correctly defined relations and constraints.
- **Use of UML Diagrams**: Visualizing the data structure through an UML diagram for better understanding and documentation.

## Project Structure
The project is structured as follows:

- **ecommerce_db_schema.sql**: This script initializes the database by creating tables, defining relationships, and adding constraints like primary and foreign keys.
- **ecommerce_uml_diagram.png**: A visual representation of the database schema using an UML diagram to depict the relationships and cardinalities between the tables.

## Database Tables
The database includes the following tables:

  1) **Users**: Stores customer information.
  2) **Products**: Contains details about available products.
  3) **Categories**: Classifies products into categories.
  4) **Orders**: Manages orders placed by users.
  5) **Order_Items**: Tracks the products included in each order.
  6) **Payments**: Handles payment information for orders.
  7) **Shipping**: Manages the shipping details of orders.
  8) **Reviews**: Stores user feedback and ratings on products.
  9) **Shopping_Cart**: Temporarily holds items for users before purchase.

### Below is the UML diagram illustrating the database structure:
![UML database modelisation drawio](https://github.com/user-attachments/assets/509b9f8a-bd75-41cc-bfe1-af732c9782eb)

## How to Use
  1) Clone the repository:
```bash git
git clone https://github.com/BenoitAd/Database-Conceptualization-PostgreSQL.git
```
  2) Open ecommerce_db_schema.sql and execute the script on a PostgreSQL database to set up the schema.
  3) View the ecommerce_uml_diagram.png file to understand the database relationships.

## Next Steps
Future updates to this project may include adding stored procedures, optimizing queries, and integrating the database with an API or frontend.

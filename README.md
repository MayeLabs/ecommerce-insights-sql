# ecommerce-insights-sql
SQL analytics project using PostgreSQL and Docker. Covers querying, aggregations and JOIN operations over a simulated e-commerce database with clients, products and orders.

![Finished](https://img.shields.io/badge/STATUS-FINISHED-green)
![Personal Project](https://img.shields.io/badge/TYPE-PERSONAL%20PROJECT-blue)
![Based on Bootcamp](https://img.shields.io/badge/BASED%20ON-BOOTCAMP%20EXERCISE-orange)

## Motivation

## Motivation

This project was developed to practice SQL over a simulated e-commerce database, 
answering business questions such as:

**Basic queries**
- What are the names and emails of all our customers?
- Which customers live in Madrid?
- Which products have a price greater than 100€?
- Which products belong to the 'Electronics' category?
- Show all products ordered from cheapest to most expensive.

**Aggregations**
- How many customers do we have registered in total?
- What is the price of the most expensive product?
- What is the average value of all orders placed?
- How much total revenue has the store generated?

**JOINs & Advanced queries**
- Show the customer name and date for each order placed.
- List the top 10 customers by total spending.
- For each product category, show units sold and total revenue.
- Find customers who registered in 2024 but have never placed an order.
- Show the ranking of best-selling products including their percentage of total sales.

Built with PostgreSQL as the database engine and Docker to spin up a fully reproducible environment.


## Project Structure

```
ecommerce-insights-sql/
├── queries/
│   └── consultas.sql
├── img/
│   └── diagram.png
├── init/
│   ├── 01_practica_ecommerce.sql
│   └── 02_datos_adicionales_ecommerce.sql
├── docker-compose.yml
├── .env.example
├── .gitignore
└── README.md
```

## Technologies & Libraries

- **Database:** PostgreSQL 17
- **Containerization:** Docker 29.3.0
- **Container Orchestration:** Docker Compose 5.1.0



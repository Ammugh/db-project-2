# Library Management System — Database Application

A full database application for a Library Management System, built with PHP, MySQL, and XAMPP. Covers the complete database design and implementation cycle from ER diagram to working application.

## What it does

Manages library operations including book inventory, member records, checkouts, returns, and overdue tracking. Built as a structured exercise in relational database design and PHP-driven application logic.

## Features

- ER/EER schema design for a Library Management System
- Relational database schema mapped from the EER model
- MySQL tables with proper constraints and relationships
- Data population via INSERT statements
- PHP interface for:
  - Book checkout and return transactions
  - Member lookup and registration
  - Overdue book tracking
  - Inventory queries

## Tech stack

- PHP
- MySQL
- XAMPP (Apache + MySQL local server)
- SQL (DDL + DML)

## Project structure

```
DB1 Project2 PART1,2/      — ER/EER schema design and relational mapping
DB1 PROJECT2 Part3/        — PHP application and SQL queries
```

## How to run

1. Install XAMPP and start Apache + MySQL
2. Import the SQL schema into MySQL via phpMyAdmin
3. Place the PHP files in your XAMPP `htdocs/` folder
4. Open `localhost` in your browser to use the application

## Background

This project was part of a Database Systems course at UT Arlington. The goal was to practice the full lifecycle: conceptual design → logical design → physical implementation → application layer.

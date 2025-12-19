# Final Files Description

This document explains the contents and workflow of the SQL files contained in the `Final Files` directory.  
These scripts together represent the full implementation phase (Phase 4) of the Fitness Database Project.

---

## Overview

Each SQL file plays a distinct role in the creation, population, and validation of the `kangss_db` database.  
The order of execution ensures that dependencies between tables and data are handled correctly.

---

## File Descriptions

### 1. create_tables.sql
**Purpose:**  
Defines the database schema and table relationships.

**Details:**  
- Creates all necessary tables for entities such as Users, Workouts, Exercises, and Goals.  
- Defines primary keys, foreign keys, and constraints.  
- Matches the structure illustrated in the `fitness_schema_diagram.png` file.  
- Should be executed **first** to initialize the database.

**Example:**
```sql
CREATE DATABASE kangss_db;
USE kangss_db;
CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    date_joined DATE
);
```

---

### 2. insert_data.sql
**Purpose:**  
Populates the database with test data for demonstration and validation.

**Details:**  
- Inserts sample rows into each table.  
- Establishes realistic relationships between entities (e.g., linking workouts to users).  
- Ensures each foreign key constraint is respected.  
- Should be executed **after** `create_tables.sql`.

**Example:**
```sql
INSERT INTO user (first_name, last_name, email, date_joined)
VALUES ('John', 'Doe', 'john.doe@example.com', '2024-06-01');
```

---

### 3. sample_queries.sql
**Purpose:**  
Showcases the use of SQL queries to extract meaningful insights from the database.

**Details:**  
- Contains practical examples of `SELECT`, `JOIN`, `GROUP BY`, and aggregate functions.  
- Demonstrates analytical and reporting queries (e.g., average workout duration, user performance summaries).  
- Should be executed **after** inserting data.

**Example:**
```sql
SELECT u.first_name, u.last_name, COUNT(w.workout_id) AS total_workouts
FROM user u
JOIN workout w ON u.user_id = w.user_id
GROUP BY u.user_id;
```

---

## Execution Order

1. **create_tables.sql**  
   Initializes the database structure.

2. **insert_data.sql**  
   Populates the schema with sample records.

3. **sample_queries.sql**  
   Validates the data and demonstrates how the database supports analytical queries.

---

## Schema Reference

The following diagram corresponds to the final structure of the database:  
`fitness_schema_diagram.png`

---

## Notes

- The database name used is `kangss_db`.
- MySQL 8.0+ is recommended for compatibility.
- The scripts are safe to re-run if the database is dropped and recreated.
- All SQL files adhere to normalization principles outlined in Phases 1–3.

---

**End of Document**

# Project Notes – Fitness Database Project
**Author:** Sandeep Kang  
**Course:** INFO I308: Information Representation  
**Semester:** Summer 2025 – Indiana University Indianapolis  

---

## Project Context
This project was developed as part of the INFO I308 course to demonstrate understanding of the complete database design lifecycle. The goal was to design and implement a relational database system that models user activity in a fitness environment, including users, workouts, exercises, and goals. 

The project followed a structured four-phase process:
1. Proposal and requirements gathering  
2. Normalization of raw data  
3. Entity Relationship Diagram (ERD) design  
4. Implementation in MySQL with SQL scripting

---

## Design Decisions
- **Database Name:** `kangss_db` was selected to maintain clear ownership and avoid conflicts with shared schemas.  
- **Primary Entities:** Users, Workouts, Exercises, and Goals were identified as the core relational tables.  
- **Normalization:** The schema was normalized up to **Third Normal Form (3NF)** to ensure data consistency and eliminate redundancy.  
- **Relationships:** One-to-many relationships were established between Users and Workouts, and between Workouts and Exercises.  
- **Constraints:** Foreign key constraints enforce referential integrity between dependent tables.  
- **Diagramming Tool:** MySQL Workbench was used to design and export the final ERD.

---

## Challenges and Solutions
- **Challenge:** Managing complex relationships between exercises and goals without creating circular dependencies.  
  **Solution:** Introduced associative tables that act as join tables to preserve normalization.  

- **Challenge:** Ensuring referential integrity during data insertion.  
  **Solution:** Scripted `INSERT` operations carefully in dependency order to respect foreign key constraints.  

- **Challenge:** Verifying correctness of joins in analytical queries.  
  **Solution:** Used test cases and manual inspection to validate query output accuracy.

---

## Testing and Validation
All SQL files were tested in MySQL Workbench 8.0.  
Validation steps included:
- Running `SHOW TABLES;` and `DESCRIBE` commands to verify schema creation.  
- Using `SELECT COUNT(*)` to confirm data population in each table.  
- Executing all analytical queries in `sample_queries.sql` to verify expected outputs.  
- Checking error-free execution of foreign key constraints.

---

## Learning Outcomes
Through this project, I developed practical experience in:
- Translating business requirements into database schema design  
- Applying normalization techniques to reduce redundancy  
- Implementing and enforcing data integrity using SQL constraints  
- Writing SQL scripts for schema creation, data population, and analysis  
- Documenting each stage of the database development process

---

## Future Enhancements
- Implement stored procedures to automate common analytics.  
- Add user authentication and role-based access control.  
- Integrate the database with a Python or Flask-based dashboard.  
- Expand dataset to include wearable fitness tracker data.  
- Deploy the project on a cloud MySQL instance for remote access.

---

**End of Document**

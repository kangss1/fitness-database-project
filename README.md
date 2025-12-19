# Fitness Database Project
**Developed by:** Sandeep Kang  
**Course:** INFO I308: Information Representation – IUPUI  
**Semester:** Summer 2025  

---

## Project Overview
This repository contains a complete relational database project designed and implemented as part of the INFO I308: Information Representation course at Indiana University–Purdue University Indianapolis (IUPUI).  
The project demonstrates the full database design lifecycle—from conceptual modeling to physical implementation—using SQL and normalization principles.

The project focuses on designing a **Fitness Tracking Database**, which models users, workouts, exercises, and goals.  
Each phase of the project corresponds to a key stage in the data modeling and implementation process.

---

## Project Phases

### Phase 1 – Database Proposal
Defines the project purpose, data requirements, and high-level objectives.  
Outlines entities, attributes, and intended use cases for the database.

### Phase 2 – Normalization
Demonstrates the normalization process from unstructured data to 3NF.  
Ensures the removal of redundancies and maintains data integrity.

### Phase 3 – Entity Relationship Diagram (ERD)
Visualizes the logical structure of the database.  
Shows all entities, relationships, and primary/foreign key constraints.

### Phase 4 – Implementation
Implements the database in SQL using MySQL.  
Includes table creation, data population, and example analytical queries.

---

## Repository Structure

```
fitness-database-project/
│
├── README.md
│
├── Phase1_Proposal/
│   └── Phase 1-Database proposal.md
│
├── Phase2_Normalization/
│   └── Phase 2-Normalization.md
│
├── Phase3_ERD/
│   ├── Phase 3--ERD.md
│   └── fitness_erd.png
│
├── Phase4_Implementation/
│   ├── Module 15-Phase 4-Database implementation.md
│   ├── fitnessDB.pdf
│   └── Final Files/
│       ├── create_tables.sql
│       ├── insert_data.sql
│       ├── sample_queries.sql
│       ├── fitness_schema_diagram.png
│       └── Final_Files_Description.md
│
└── docs/
    ├── project_notes.md
    └── other documentation files
```

---

## How to Set Up and Run

### Prerequisites
- MySQL 8.0+ or compatible version installed
- MySQL Workbench or terminal access
- Basic familiarity with running SQL scripts

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/kangss1/fitness-database-project.git
   cd fitness-database-project/Phase4_Implementation/Final\ Files
   ```

2. **Create the Database**
   ```sql
   CREATE DATABASE kangss_db;
   USE kangss_db;
   ```

3. **Run SQL Scripts in Order**
   ```bash
   mysql -u root -p kangss_db < create_tables.sql
   mysql -u root -p kangss_db < insert_data.sql
   mysql -u root -p kangss_db < sample_queries.sql
   ```

4. **Verify Data**
   - Confirm tables were created correctly.  
   - Check that sample data was inserted.  
   - Run analytical queries to view results.

---

## Final Files Overview

| File | Description |
|------|--------------|
| `create_tables.sql` | Defines all tables, primary keys, and relationships. |
| `insert_data.sql` | Inserts sample records for testing queries. |
| `sample_queries.sql` | Demonstrates practical database queries, joins, and analytics. |
| `fitness_schema_diagram.png` | Final database schema diagram used for implementation. |
| `Final_Files_Description.md` | Detailed explanation of the final SQL files and workflow. |

---

## Data and References
- Project based on coursework from INFO I308 at IUPUI.
- All data and schema definitions were designed for academic and demonstration purposes.
- Diagram created using MySQL Workbench.

---

## Future Improvements

- Add stored procedures and triggers for automated logic enforcement.
- Include role-based user access control and authentication layers.
- Implement an ETL pipeline to load external fitness datasets.
- Develop front-end visualizations (using Flask or Dash) to display fitness trends.
- Integrate database performance tuning and indexing strategies.

---

**© 2025 Sandeep Kang. For educational use only.**

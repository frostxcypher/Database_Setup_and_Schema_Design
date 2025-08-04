# Database_Setup_and_Schema_Design

### Step 1: Chose a Domain
- Selected **Library Management System** as the domain for designing the database.

---

### Step 2: Identified Entities and Relationships
- Listed key entities: `Book`, `Author`, `Publisher`, `Member`, `Borrow`, and `Book_Author`.
- Defined relationships:
  - One-to-Many: Publisher → Book, Member → Borrow
  - Many-to-Many: Author ↔ Book (via Book_Author)

---

### Step 3: Designed the ER Diagram
- Mapped out entities, attributes, primary and foreign keys.
- Visualized how each table connects with others to form the complete schema.

---

### Step 4: Wrote SQL Script
- Created tables using `CREATE TABLE` statements.
- Added `PRIMARY KEY` and `FOREIGN KEY` constraints for integrity.
- Used `AUTOINCREMENT` for generating unique IDs.
- Created a junction table `Book_Author` for the many-to-many relationship.

---

### Step 5: Generated ER Diagram from Schema
- Used SQLiteStudio to reverse-engineer and visualize the ER diagram from the SQL script.

---

### Step 6: Verified Schema Structure
- Ensured all relationships were correctly established.
- Checked for normalization and data integrity.
- Finalized schema with clean, structured design.

---

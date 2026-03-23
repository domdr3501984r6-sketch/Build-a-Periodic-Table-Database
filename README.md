Relational database project built using PostgreSQL and Bash scripting.
This project models a chemical element database and includes a command-line tool to query information about elements, their properties, and types.
📌 Project Overview

The database is designed following relational database principles and normalization:

    Primary & Foreign Keys for data integrity.

    One-to-One and One-to-Many relationships between elements and properties.

    Constraints: UNIQUE, NOT NULL, and CHECK constraints.

    Data Normalization: Separation of element types into a dedicated table.

The project also features a Bash script (element.sh) that allows users to search for any element by:

    Atomic Number (e.g., 1)

    Symbol (e.g., H)

    Name (e.g., Hydrogen)

🗂 Database Structure
Tables

    elements: Basic identification (atomic number, symbol, name).

    properties: Physical data (mass, melting/boiling points, type link).

    types: Categorization of elements (metal, nonmetal, metalloid).

Relationships

    Each element has a unique set of properties.

    Each property belongs to a specific type.

🛠 Technologies Used

    PostgreSQL (Database Management)

    Bash (Scripting & Automation)

    Git & GitHub (Version Control with Conventional Commits)

    SQL (Data Manipulation & Schema Design)

🚀 How to Use

    Clone the repository.

    Rebuild the database:
    Bash

    psql -U postgres < periodic_table.sql

    Give execution permissions to the script:
    Bash

    chmod +x element.sh

    Run the script:
    Bash

    ./element.sh [element_info]

💾 Database Dump

The file periodic_table.sql contains the full database dump, including:

    Cleaned schema (removed unnecessary columns and trial data).

    All constraints and sequences.

    Full data for the first 10 elements of the periodic table.

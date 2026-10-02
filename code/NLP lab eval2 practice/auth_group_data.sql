-- auth_group table sample data for the NLP lab exercise
-- Run with SQLite:
--   sqlite3 nlp_lab_eval2.db < auth_group_data.sql
-- Run with PostgreSQL:
--   psql -d your_database -f auth_group_data.sql

DROP TABLE IF EXISTS auth_group;
CREATE TABLE auth_group (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

INSERT INTO auth_group (id, name) VALUES
    (1, 'bike_admin'),
    (2, 'sales_manager'),
    (3, 'inventory_staff'),
    (4, 'finance_officer'),
    (5, 'customer_support'),
    (6, 'service_manager');

SELECT id, name FROM auth_group ORDER BY id;

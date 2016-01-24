# What is SQL

- SQL = Structured Query Language

- Four general operations (CRUD)
 - Create - putting data into tables
 - Read - query data out of a table
 - Update - change data out of a table
 - Delete - remove data from the table

- SQL is a language for doing CRUD operations on TABLES
  to produce NEW TABLES or ALTER EXISTING ones

## Operations

### CREATE TABLE
- creates new tables
CREATE TABLE <table_name>(
  <column_name> <column_type>,
  <column_name> <column_type>
);


### Create - INSERT INTO
- inserts new rows into existing columns
INSERT INTO <table_name> (<*column_names>)
  VALUES (<*column_values>);
INSERT INTO <table_name>
  VALUES (<*column_names_in_order>);


### Read - SELECT .. FROM .. WHERE ..
- creates a temporary table containing:
  - columns you want to appear

SELECT (<*columns>) FROM <table_name>;

select * from pet;
select name, age from pet;
select name, age from pet where dead = 0;

SELECT (<*columns>) FROM <multiple_tables>
  WHERE condition1 AND
        condition2 AND
        condition3;

### DELETE FROM <table>
- similar to SELECT, but deletes rows instead
  of just reading them

DELETE FROM <table> WHERE <conditions>

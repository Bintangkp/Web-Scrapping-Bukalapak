/*
=================================================
MILESTONE 1

Nama  : Bintang Ksatrio Pratomo
Batch : CODA-RMT-003

File ini berisi query untuk menampung hasil dari 
scraping pada python yg menghasilkan file .csv
=================================================
*/


-- Buat Database untuk menampung csv
CREATE DATABASE bukalapak_basreng_scrape

-- Buat table untuk menampung value dari csv
CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
Product_names TEXT,
Prices INT,
Ratings FLOAT,
Stores TEXT,
Locations TEXT
)

-- Insert value csv ke dalam table products
COPY products(
Product_names,Prices,Ratings,Stores,Locations
)
FROM 'D:\Hacktiv8\MILESTONE\basreng.csv'
DELIMITER ','
CSV HEADER

-- Tampilkan Data yg ada pada table products
SELECT * FROM products


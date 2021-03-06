BEGIN;

 DROP TABLE IF EXISTS users CASCADE;
 DROP TABLE IF EXISTS customers CASCADE;
 DROP TABLE IF EXISTS suppliers CASCADE;
 DROP TABLE IF EXISTS deals CASCADE;
  DROP TABLE IF EXISTS inventory CASCADE;


CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR NOT NULL,
  password VARCHAR NOT NULL,
  username_phone_number VARCHAR NOT NULL
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(30) NOT NULL,
  customer_phone_number INTEGER NOT NULL,
  dept INTEGER DEFAULT 0
);

CREATE TABLE suppliers (
  supplier_id SERIAL PRIMARY KEY,
  supplier_name VARCHAR(30) NOT NULL,
  supplier_phone_number INTEGER NOT NULL,
  supplier_location INTEGER,
  supplier_products VARCHAR(100)
);

CREATE TABLE inventory (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(30) NOT NULL,
  product_price INTEGER NOT NULL,
  product_quantity INTEGER NOT NULL,
  supplier_price INTEGER DEFAULT 0 NOT NULL
);

CREATE TABLE deals (
  deal_id SERIAL PRIMARY KEY,
  deal_date_created TIMESTAMP DEFAULT now(),
  deal_profit INTEGER,
  deal_total INTEGER
);

INSERT INTO users (username,password,username_phone_number)
VALUES
('Ghassan', '123456' ,0544747667),
('Dana', '123456' , 0547135551);


COMMIT;
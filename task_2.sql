CREATE TABLE books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT, 
    price DOUBLE,
    publication_date DATE
    );
CREATE TABLE authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);
CREATE TABLE order details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE
);
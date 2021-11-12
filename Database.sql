CREATE DATABASE bookstore;

USE bookstore;

CREATE TABLE publisher (
  publisher_id INTEGER NOT NULL,
  publisher_name VARCHAR(50) NOT NULL,
  publisher_phone VARCHAR(15),
  PRIMARY KEY (publisher_id)
);

CREATE TABLE language (
  country_id VARCHAR (10) NOT NULL,
  book_released_country VARCHAR(50) NOT NULL,
  book_language VARCHAR (10),
  PRIMARY KEY (country_id)
);

CREATE TABLE book (
  isbn INTEGER NOT NULL,
  book_name VARCHAR(50) NOT NULL,
  publisher_id INTEGER NOT NULL,
  book_category VARCHAR (30),
  book_released_year INTEGER,
  country_id VARCHAR (10),
  book_price INTEGER,
  book_stock INTEGER,
  PRIMARY KEY (isbn),
  FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
  FOREIGN KEY (country_id) REFERENCES language(country_id)
);

CREATE TABLE author (
  author_id INTEGER NOT NULL,
  author_name VARCHAR(50) NOT NULL,
  author_surname VARCHAR(50) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE book_author (
  book_author_id INTEGER NOT NULL,
  isbn INTEGER NOT NULL,
  author_id INTEGER NOT NULL,
  PRIMARY KEY (book_author_id),
  FOREIGN KEY (isbn) REFERENCES book(isbn),
  FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE city(
  customer_city_code INTEGER NOT NULL,
  customer_city VARCHAR(15) NOT NULL,
  PRIMARY KEY (customer_city_code)
);

CREATE TABLE customer (
  customer_id INTEGER NOT NULL,
  customer_name VARCHAR(50) NOT NULL,
  customer_surname VARCHAR(50) NOT NULL,
  customer_email VARCHAR(70) NOT NULL,
  customer_city_code INTEGER NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (customer_city_code) REFERENCES city(customer_city_code)
);

CREATE TABLE orders(
  order_id VARCHAR(15) NOT NULL,
  order_date DATE,
  customer_id INTEGER NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE order_book(
  order_id VARCHAR(15) NOT NULL,
  isbn INTEGER NOT NULL,
  book_quantity INTEGER NOT NULL,
  PRIMARY KEY (order_id, isbn),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (isbn) REFERENCES book(isbn)
);

INSERT INTO publisher (publisher_id, publisher_name, publisher_phone)
   VALUES (1, 'Altın', '111-111-11-11'),
          (2, 'Yapı Kredi', '234-122-12-31'),
          (3, 'Kırmızı Kedi', '555-636-24-89'),
          (4, 'İş Bankası', '565-552-12-42'),
          (5, 'Ro', '353-222-32-21');

INSERT INTO language (country_id, book_released_country, book_language)
   VALUES ('001UK', 'England', 'English'),
          ('002TR', 'Turkey', 'Turkish'),
          ('003US', 'USA', 'English'),
          ('004FR', 'France', 'French');

INSERT INTO book (isbn, book_name, publisher_id, book_category,
                  book_released_year, country_id, book_price, book_stock)
    VALUES (100000001, '16:50 Train', 1, 'Crime', 1998, '001UK', 30, 2),
           (100000002, 'Ah Mana Mu', 2, 'Biography', 2003, '002TR', 18, 3),
           (100000004, 'Hiç Yoktan İyidir', 3, 'Romance', 2010, '002TR', 12, 1),
           (100000005, 'Unbelievable', 4, 'Romance', 2010, '003US', 36, 1),
           (100000006, 'Hiç Yoktan İyidir', 4, 'Romance', 2013, '002TR', 23, 7),
           (100000007, 'Agatha’nın Anahtarı', 2, 'Crime', 2011, '002TR', 16, 9),
           (100000008, 'Marriage', 5, 'Romance', 2000, '004FR', 40, 3),
           (100000003, 'Flowers', 1, 'Romance', 2005, '001UK', 29, 2),
           (100000009, 'Flowers', 1, 'Romance', 2010, '001UK', 25, 5);

INSERT INTO author (author_id, author_name, author_surname)
   VALUES (536, 'Sherlock', 'Holmes'),
          (345, 'Handan', 'Gökçek'),
          (535, 'Agatha', 'Christie'),
          (555, 'Nezir', 'İçgören'),
          (343, 'Sara', 'Shepard'),
          (198, 'Ahmet', 'Ümit'),
          (224, 'Nicholas', 'Sparks');

INSERT INTO book_author (book_author_id, isbn, author_id)
   VALUES (1, 100000001, 536),
          (2, 100000002, 345),
          (3, 100000001, 535),
          (4, 100000004, 555),
          (5, 100000005, 343),
          (6, 100000006, 555),
          (7, 100000007, 198),
          (8, 100000008, 224),
          (9, 100000003, 535),
          (10, 100000009, 535);

INSERT INTO city (customer_city_code, customer_city)
   VALUES (34, 'Istanbul'),
          (09, 'Aydın'),
          (35, 'Istanbul'),
          (01, 'Izmir'),
          (06, 'Ankara');

INSERT INTO customer (customer_id, customer_name, customer_surname,
                      customer_email, customer_city_code)
   VALUES (184555, 'Ali', 'Solmaz', 'aaa@book.com', 34),
          (673193, 'Ayşe', 'Kimdir', 'ak@book.com', 09),
          (242422, 'Cem', 'Birinci', 'cb@book.com', 35),
          (158530, 'Murat', 'Bilgin', 'mb@book.com', 06),
          (248590, 'Ayşen', 'Fırat', 'af@book.com', 01),
          (556474, 'Murat', 'Maden', 'mm@book.com', 06),
          (152536, 'Selin', 'Ok', 'so@book.com', 06);

INSERT INTO orders (order_id, order_date, customer_id)
   VALUES ('ABC10001', '2020-12-19', 184555),
          ('ABC10002', '2020-12-19', 673193),
          ('ABC10003', '2020-11-02', 242422),
          ('ABC10004', '2020-12-14', 158530),
          ('ABC10005', '2020-11-15', 248590),
          ('ABC10006', '2020-12-01', 556474),
          ('ABC10007', '2020-11-15', 152536);

INSERT INTO order_book (order_id, isbn, book_quantity)
   VALUES ('ABC10001', 100000001, 1),
          ('ABC10001', 100000002, 2),
          ('ABC10001', 100000009, 1),
          ('ABC10002', 100000004, 1),
          ('ABC10002', 100000005, 1),
          ('ABC10003', 100000006, 1),
          ('ABC10004', 100000007, 3),
          ('ABC10004', 100000008, 2),
          ('ABC10005', 100000003, 1),
          ('ABC10006', 100000009, 1),
          ('ABC10007', 100000001, 1);

-- Сохтани базаи додаҳи "Мағозаи телефонҳо"
CREATE DATABASE PhoneStore_DB;
USE `phonestore_db`

-- Сохтани ҷадвали телефонҳо
CREATE TABLE Phones
(
	id INT PRIMARY KEY,
	Model VARCHAR(50),
	Marka VARCHAR(50),
	Storage_id INT,
	Color_id INT,
	State_id INT,
	Price DECIMAL(5, 2),
	FOREIGN KEY (state_id) REFERENCES states(id),
	FOREIGN KEY (color_id) REFERENCES colors(id),
	FOREIGN KEY (storage_id) REFERENCES STORAGE(id)
);
-- Сохтани ҷадвали истифодабарандагон
CREATE TABLE Users
(
	id INT PRIMARY KEY,
	Fistname VARCHAR(50),
	Lastname VARCHAR(50),
	Age INT,
	Gender VARCHAR(4),
	Phone VARCHAR(50),
	Email VARCHAR(50),
	Status_id INT,
	FOREIGN KEY (status_id) REFERENCES STATUS(id)
);
-- Сохтани ҷадвали аломатҳои телефон
CREATE TABLE Specifications
(
	id INT PRIMARY KEY,
	Phone_id INT,
	Display VARCHAR(100),
	RAM VARCHAR(50),
	Battery VARCHAR(50),
	Camera VARCHAR(100),
	FOREIGN KEY (Phone_id) REFERENCES Phones(id)
);
-- Сохтани ҷадвали анбор
CREATE TABLE Stock
(
	id INT PRIMARY KEY,
	Product_id INT,
	Amount INT,
	FOREIGN KEY (Product_id) REFERENCES Phones(id)
);
-- Сахтани ҷадвали фармоиш
CREATE TABLE Order_phone
(
	id INT PRIMARY KEY,
	Client_id INT,
	Total DECIMAL(5, 2),
	Payment_id INT,
	Buying_id INT,
	Address VARCHAR(100) DEFAULT NULL,
	FOREIGN KEY (Client_id) REFERENCES users(id),
	FOREIGN KEY (Payment_id) REFERENCES Payments(id),
	FOREIGN KEY (Buying_id) REFERENCES Buying(id)
);
-- Сохтани ҷадвали хотираи телефон
CREATE TABLE STORAGE
(
	id INT PRIMARY KEY,
	Size INT
);

CREATE TABLE Colors
(
	id INT PRIMARY KEY,
	Color VARCHAR(50)
);

CREATE TABLE States
(
	id INT PRIMARY KEY,
	State VARCHAR(50)
);

CREATE TABLE System
(
	id INT PRIMARY KEY,
	Os VARCHAR(50)
);

CREATE TABLE Payments
(
	id INT PRIMARY KEY,
	Method VARCHAR(50)
);

CREATE TABLE Buying
(
	id INT PRIMARY KEY,
	Method VARCHAR(50)
);

CREATE TABLE STATUS
(
	id INT PRIMARY KEY,
	title VARCHAR(50)
);


DROP DATABASE IF EXISTS section2_db;

CREATE DATABASE section2_db;

\c section2_db;

CREATE TABLE IF NOT EXISTS car (
	carID 			SERIAL PRIMARY KEY,
	model 			VARCHAR(50) NOT NULL,
	weight			INT NOT NULL,
	price			FLOAT NOT NULL,
	manufacturer	VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS salesperson (
	empID			SERIAL PRIMARY KEY,
	name			VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS customer (
	custID			SERIAL PRIMARY KEY,
	name			VARCHAR (255) NOT NULL,
	phone			INT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS transaction (
	transactionID 	SERIAL NOT NULL,
	empID 	SERIAL NOT NULL,
	custID 	SERIAL NOT NULL,
	carID 	SERIAL NOT NULL,
	price 	FLOAT NOT NULL,
	txnDate TIMESTAMPTZ NOT NULL,
	PRIMARY KEY (transactionID),
	FOREIGN KEY (empID) REFERENCES salesperson (empID),
	FOREIGN KEY (custID) REFERENCES customer (custID),
	FOREIGN KEY (carID) REFERENCES car (carID)
);

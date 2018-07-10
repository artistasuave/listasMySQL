DROP DATABASE IF EXISTS oss;
CREATE DATABASE IF NOT EXISTS oss;
USE oss;

CREATE TABLE clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome TEXT,
	sexo CHAR(1)
);

CREATE TABLE celulares(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_cliente INT NOT NULL, 
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	valor TEXT NOT NULL,
	ativo BOOLEAN DEFAULT 0
);

CREATE TABLE emails(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	valor TEXT NOT NULL,
	ativo BOOLEAN DEFAULT 0
);

CREATE TABLE contasAPagar(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id),
	valor REAL NOT NULL,
	data_vencimento DATE NOT NULL,
	valor_pago REAL DEFAULT '0',
	situacao VARCHAR(100) DEFAULT 'Pagar',
	ativo BOOLEAN DEFAULT 0
);




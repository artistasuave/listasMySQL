DROP DATABASE IF EXISTS oss;
CREATE DATABASE IF NOT EXISTS oss;
USE oss;

CREATE TABLE pessoas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	cpf VARCHAR(11)
);

CREATE TABLE carros(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_pessoa INT NOT NULL,
	FOREIGN KEY (id_pessoa) REFERENCES pessoas(id),
	marca VARCHAR(150) NOT NULL,
	modelo VARCHAR(150) NOT NULL,
	ano_lancamento INT NOT NULL,
	ano_fabricacao INT NOT NULL,
	motor VARCHAR(150),
	cor VARCHAR(100),
	preco DECIMAL
);

INSERT INTO pessoas (nome, cpf) VALUES 
('Abraão Nobre', REPLACE(REPLACE('952.328.294-83','.',''),'-','')),
('Severino Braga', REPLACE(REPLACE('876.770.333-00','.',''),'-','')),
('Samuel Faria', REPLACE(REPLACE('989.272.034-29','.',''),'-','')),
('Florêncio Robalo', REPLACE(REPLACE('362.635.174-25','.',''),'-',''));

INSERT INTO carros (id_pessoa, marca, modelo, ano_lancamento, ano_fabricacao, motor, cor, preco) VALUES
((SELECT id FROM pessoas WHERE nome = 'Abraão Nobre'),
	'Volkswagen', 'Gol', 2010, 2009, '8v Power Flex', 'Vermelho', 18000.00),
((SELECT id FROM pessoas WHERE nome = 'Severino Braga'),
	'Fiat', 'Brava', 2000, 1999, 'SX 1.6 16V', 'Cinza', 9000.00),
((SELECT id FROM pessoas WHERE nome = 'Samuel Faria'),
	'Renault', 'Clio', 1997, 1996, '1.0 8v', 'Verde', 5500.00),
((SELECT id FROM pessoas WHERE nome = 'Florêncio Robalo'),
	'Volkswagen', 'Golf', 1994, 1994, '2.0 120cv', 'Azul', 17000.00);



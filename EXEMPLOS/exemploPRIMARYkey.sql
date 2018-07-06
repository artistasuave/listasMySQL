DROP DATABASE IF EXISTS escola;
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE salas_de_aula(
#PARA QUE OCORRA O AUTOINCREMENTO
id INT AUTO_INCREMENT PRIMARY KEY,
#NOT NULL: NÃO PODE SER VAZIO
nome VARCHAR(100) UNIQUE NOT NULL,
#UNSIGNED: NÃO TEM SINAL
quantidade_maxima_alunos SMALLINT UNSIGNED NOT NULL
);

INSERT INTO salas_de_aula (nome, quantidade_maxima_alunos)
VALUES
('Sala da Caixa', 4),
('Sala deixa eu tirar o cd', 10),
('Sala de deixa eu arropar a fita', 2);

CREATE TABLE usuarios(
id INT AUTO_INCREMENT PRIMARY KEY,
id_sala_de_aula INTEGER NOT NULL,
nome VARCHAR(200) UNIQUE NOT NULL,
cpf VARCHAR(12) NOT NULL,
FOREIGN KEY(id_sala_de_aula) REFERENCES salas_de_aula(id)
);

INSERT INTO usuarios (id_sala_de_aula, nome, cpf) VALUES
(1,'Pedro', '12345678'),
(3, 'Gustavo', '12345678'),
(2, 'Gabriel', '12345678'),
(2, 'Guilherme', '12345678'),
(1, 'Henrique', '12345678'),
(1, 'Rafael', '12345678');


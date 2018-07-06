DROP DATABASE IF EXISTS exemploContagem;
CREATE DATABASE IF NOT EXISTS exemploContagem;
USE exemploContagem;

CREATE TABLE pessoas(
	nome TEXT,
	linguagem TEXT
);

INSERT INTO pessoas (nome, linguagem) VALUES
('Francisco', 'Java'),
('Crispim', 'Java'),
('Leonardo', 'Pascal'),
('Marcio P', 'Pascal'),
('Marcio A', 'Php'),
('Rafael', 'C#');

SELECT linguagem, COUNT(nome)
FROM pessoas
GROUP BY linguagem
ORDER BY COUNT(nome) DESC;
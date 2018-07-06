DROP DATABASE IF EXISTS relacionada;
CREATE DATABASE IF NOT EXISTS relacionada;
USE relacionada;

CREATE TABLE alunos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	idade INT
);

CREATE TABLE caracteristicas(
	id_caracteristicas INT AUTO_INCREMENT PRIMARY KEY,
	id_alunos INT NOT NULL,
	FOREIGN KEY (id_alunos) REFERENCES alunos(id),
	nome VARCHAR (150) NOT NULL
);

INSERT INTO alunos (nome, idade) VALUES
('Alice', 18),
('Sophia', 4),
('Miguel', 9),
('Heitor', 23),
('Valentina', 15),
('Joaquim', 49);

INSERT INTO caracteristicas(id_alunos, nome) VALUES
((SELECT id FROM alunos WHERE nome='Heitor'), 'egoísta'),
((SELECT id FROM alunos WHERE nome='Alice'), 'organizada'),
((SELECT id FROM alunos WHERE nome='Sophia'), 'pontual'),
((SELECT id FROM alunos WHERE nome='Miguel'), 'criativo'),
((SELECT id FROM alunos WHERE nome='Heitor'), 'proativo'),
((SELECT id FROM alunos WHERE nome='Alice'), 'altruísta'),
((SELECT id FROM alunos WHERE nome='Valentina'), 'pessimista'),
((SELECT id FROM alunos WHERE nome='Joaquim'), 'paciente'),
((SELECT id FROM alunos WHERE nome='Heitor'), 'indelicado'),
((SELECT id FROM alunos WHERE nome='Sophia'), 'desobediente'),
((SELECT id FROM alunos WHERE nome='Miguel'), 'intolerante'),
((SELECT id FROM alunos WHERE nome='Joaquim'), 'empático'),
((SELECT id FROM alunos WHERE nome='Sophia'), 'egoísta'),
((SELECT id FROM alunos WHERE nome='Heitor'), 'egoísta'),
((SELECT id FROM alunos WHERE nome='Joaquim'), 'altruísta'),
((SELECT id FROM alunos WHERE nome='Sophia'), 'sensível');
		




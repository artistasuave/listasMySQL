USE relacionada;


SELECT * FROM alunos;
SELECT * FROM caracteristicas;

#I
SELECT
	alunos.nome 'Nome do Aluno',
	caracteristicas.nome 'Características'
FROM alunos
JOIN caracteristicas
	ON (caracteristicas.id_alunos = alunos.id)
ORDER BY alunos.nome ASC;

#II
SELECT
	COUNT(caracteristicas.nome) 'Quantidade de Alunos Altruístas'
FROM caracteristicas
WHERE caracteristicas.nome='altruísta';

#III
SELECT
	caracteristicas.nome 'Característica',
	COUNT(caracteristicas.nome) 'Quantidade de Alunos'
FROM caracteristicas
GROUP BY caracteristicas.nome;

#IV
SELECT
	alunos.nome 'Nome', caracteristicas.nome 'Características'
FROM caracteristicas
JOIN alunos ON(alunos.id=caracteristicas.id_alunos)
WHERE alunos.nome = 'Sophia';


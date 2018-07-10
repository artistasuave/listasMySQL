USE oss;

#I - Liste os carros juntamente com os donos dos carros
SELECT marca, modelo, cor, preco,
	pessoas.nome 'Proprietário do Carro'
FROM carros
JOIN pessoas
	ON (carros.id_pessoa = pessoas.id)
	ORDER BY marca ASC;

#II - Liste os carros do Samuel
SELECT marca, modelo,
	pessoas.nome 'Proprietário do Carro'
FROM carros
JOIN pessoas
	ON(carros.id_pessoa = pessoas.id)
WHERE pessoas.nome LIKE 'Samuel%';
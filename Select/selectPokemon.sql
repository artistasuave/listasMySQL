USE lista02;

#1
SELECT * FROM pokemons;

#2
SELECT ataque, especial_ataque, defesa, especial_defesa FROM pokemons;

#3
SELECT nome, categoria, ataque FROM pokemons ORDER BY ataque ASC;

#4
SELECT altura, peso, peso/(altura*altura) AS IMC FROM pokemons;

#5
SELECT altura, peso, peso/(altura*altura) AS IMC FROM pokemons ORDER BY IMC DESC;

#6
SELECT nome, LENGTH(nome) AS TamanhoNome FROM pokemons ORDER BY LENGTH(nome) DESC;

#7
SELECT nome, descricao, LENGTH(nome) AS TamanhoNome FROM pokemons where LENGTH(nome)>10;

#8
SELECT nome, ataque FROM pokemons ORDER BY ataque ASC;

SELECT nome, descricao, ataque FROM pokemons WHERE ataque='1';

#9
SELECT ataque, especial_ataque, nome, defesa, especial_defesa FROM pokemons ORDER BY ataque;

#10
SELECT AVG(ataque) AS MediaAtaques FROM pokemons;

#11
SELECT SUM(ataque) AS SomaAtaques FROM pokemons;

#12
SELECT AVG(especial_ataque) FROM pokemons WHERE nome LIKE 'P%';










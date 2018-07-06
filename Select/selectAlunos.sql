CREATE DATABASE IF NOT EXISTS lista03;
USE lista03;

#1
SELECT * FROM alunos;

#2
SELECT nome FROM alunos WHERE nota_1>9.0;

#3
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4)/4 AS media FROM alunos;

#4
SELECT COUNT(signo) FROM alunos WHERE signo='peixes';

#5
SELECT SUM(nota_1) FROM alunos;

#6
SELECT AVG(nota_2) FROM alunos;

#7
SELECT MIN(nota_1) FROM alunos;
SELECT nome FROM alunos WHERE nota_1='0';

#8
SELECT MAX(LENGTH(nome)) FROM alunos;
SELECT nome, nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE LENGTH(nome)=30;

#9
SELECT cor_preferida, COUNT(cor_preferida) AS quantidade FROM alunos WHERE cor_preferida='gelo';

#10
SELECT COUNT(nome) FROM alunos WHERE nome LIKE 'Francisco%';

#11
SELECT COUNT(nome) FROM alunos WHERE nome LIKE '%Luc%';

#12
SELECT nome, signo, data_nascimento FROM alunos WHERE signo='áries';

#13
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4) / 4 'MÉDIA' FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 = (SELECT MAX(nota_1 + nota_2 + nota_3 + nota_4)/4 FROM alunos);

#14
SELECT nome, (nota_1 + nota_2 + nota_3 + nota_4)/4,
IF ((nota_1 + nota_2 + nota_3 + nota_4)/4<5,'REPROVADO', null),
IF (((nota_1 + nota_2 + nota_3 + nota_4)/4)>5 && ((nota_1 + nota_2 + nota_3 + nota_4)/4)<7, 'EM ANÁLISE', null),
IF (((nota_1 + nota_2 + nota_3 + nota_4)/4)>7, 'APROVADO', null) FROM alunos;

#15
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4) / 4 'MÉDIA' FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 = (SELECT MIN(nota_1 + nota_2 + nota_3 + nota_4)/4 FROM alunos);

#16
SELECT COUNT(nota_1) FROM alunos WHERE ((nota_1 + nota_2 + nota_3 + nota_4)/4)>7;

#17
#SELECT nome, nick, COUNT(nick) 'CaracteresNick' FROM alunos WHERE COUNT(nick)=5;

#18
SELECT nome FROM alunos WHERE ((cor_preferida='ouro' || cor_preferida='amarelo-torrado') && ((nota_1 + nota_2 + nota_3 + nota_4) / 4)>6.5);

#19
SELECT nome, data_nascimento FROM alunos;


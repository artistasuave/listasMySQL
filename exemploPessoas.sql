DROP DATABASE IF EXISTS exemplo00;
CREATE DATABASE exemplo00;
USE exemplo00;

CREATE TABLE pessoas(
			 nome VARCHAR(100),
			 cpf VARCHAR(100),
			 rg VARCHAR(14),
			 dataDeNascimento date,
			 idade TINYINT);

INSERT INTO pessoas VALUE ('Michelle de Jesus Rogério', '07377777-77' '5227777-7', '1993-05-24', '25');
INSERT INTO pessoas VALUE ('Maria Catarina Rogério', '701904426-44', '5458754-7', '1950-11-25', '68');

select nome 'Nome', cpf 'CPF', rg 'RG', dataDeNascimento 'Data de Nascimento', idade 'Idade' from pessoas; 
select * from pessoa where nome='Michelle de Jesus Rogério';




			
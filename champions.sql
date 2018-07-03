USE exemplo00;

CREATE TABLE champions(
				nome VARCHAR(45),
				descricao VARCHAR(45),
				habilidade1 VARCHAR(45),
				habilidade2 VARCHAR(45),
				habilidade3 VARCHAR(45),
				habilidade4 VARCHAR(45),
				habilidade5 VARCHAR(45));

INSERT INTO champions VALUE('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shunpo', 'Lótus da Morte');
INSERT INTO champions VALUE('Yasuo', '', 'Estilo do Errante', 'Tempestade de Aço', 'Parede de Vento', 'Espada Ágil', 'Último Suspiro');
INSERT INTO champions VALUE('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo', '', '', '', '');
INSERT INTO champions VALUE('Vayne', 'a Caçadora Noturna', 'Caçadora Noturna', 'Rolamento', 'Dardos de Prata', 'Condenar', 'Hora Final');
INSERT INTO champions VALUE('Lee Sin', 'o Monge Cego', 'Agitação', 'Onda Sônica / Ataque Ressonante', 'Proteger / Vontade de Ferro', 'Tempestade / Mutilar', '');
INSERT INTO champions VALUE('Vi', 'a Defensora de Piltover', 'Blindagem', '', 'Pancada Certeira', 'Força Excessiva', 'Saque e Enterrada');
INSERT INTO champions VALUE('Diana', 'o Escárnio da Lua' 'Espada de Prata Lunar', 'Golpe Crescente', 'Cascata Lívida', 'Colapso Minguante', 'Zênite Lunar');
INSERT INTO champions VALUE('Annie', 'a Criança Sombria', 'Piromania', 'Desintegrar', 'Incinerar', 'Escudo Fundido', 'Invocar: Tibbers');
INSERT INTO champions VALUE('Aatrox', '', 'Poço de Sangue', 'Voo Sombrio', 'Sede de Sangue / Preço em Sangue', 'Lâminas da Aflição', 'Massacre');
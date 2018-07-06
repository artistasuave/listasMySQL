DROP DATABASE IF EXISTS joguinho;
CREATE DATABASE IF NOT EXISTS joguinho;
USE joguinho;
CREATE TABLE campeaos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);
CREATE TABLE habilidades(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_campeao INT,
	nome VARCHAR(100) NOT NULL,
	descricao TEXT,
	FOREIGN KEY(id_campeao) REFERENCES campeaos(id)
);
INSERT INTO campeaos (nome) VALUES
('Viktor'),
('Maeve'),
('Grover'),
('Makoa');

INSERT INTO habilidades(id_campeao, nome, descricao) VALUES
((SELECT id FROM campeos WHERE nome = 'Viktor'),
'Assault Rifle', 'Fire one shot every 0.1s that deals
135 damage. Effective up to Medius Range'),

((SELECT id FROM campeos WHERE nome = 'Viktor'),
'FRAG GRENADE', 'Throw a fragmentation grenade dealing up to
750 damage. Holding Frag Grenade will cook the grenade 
and reduce it detonation time.'),

((SELECT id FROM campeos WHERE nome = 'Viktor'),
'HUSTLE', 'Lower your weapon and run 65% faster.'),

((SELECT id FROM campeos WHERE nome = 'Viktor'),
'BARBAGE', 'Bring up your Targeting Rinoculars. Click on Enemy
players to guide an artillery shell dealing 1400 damage to
their location. Viktor Movement speed is slowed while
channeling Barrage.');


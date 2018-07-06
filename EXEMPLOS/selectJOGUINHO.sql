USE joguinho;

SELECT habilidades.nome 'Habilidade', campeaos.nome 'Campeão'
FROM habilidades
JOIN campeaos ON(habilidades.id_campeao = campeaos.id_campeao);
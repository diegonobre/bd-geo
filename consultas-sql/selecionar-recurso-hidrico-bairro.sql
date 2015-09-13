-- Selecionar os recursos hidricos de um bairro

--# A função ST_Intersection retorna uma geometria que representa a interseção entre duas outras geometrias
--# http://www.postgis.net/docs/ST_Intersection.html

SELECT r.nome, r.geom
  FROM jampa.bairro b
  JOIN jampa.rio_municipal r ON ST_Intersects (b.geom, r.geom)
 WHERE b.bairro = 'Manaira';

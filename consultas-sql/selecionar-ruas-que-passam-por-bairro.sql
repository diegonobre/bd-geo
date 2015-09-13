-- Selecionar ruas que passam por um bairro

--# A função ST_Intersection retorna uma geometria que representa a interseção entre duas outras geometrias
--# http://www.postgis.net/docs/ST_Intersection.html

SELECT b.bairro, r.nome_logr, ST_Intersection (b.geom, r.geom)
  FROM jampa.bairro b
  JOIN jampa.rua r ON ST_Intersects (r.geom, b.geom)
 WHERE b.bairro = 'Bessa';

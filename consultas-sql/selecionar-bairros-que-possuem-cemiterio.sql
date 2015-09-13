-- Selecionar os bairros que possuem cemiterio

--# A função ST_Contains retorna TRUE "se e somente se" nenhuma parte de B está fora de A
--# boolean ST_Contains(geometry geomA, geometry geomB);
--# http://www.postgis.net/docs/ST_Contains.html

SELECT  b.bairro, c.nome
  FROM jampa.bairro b
  JOIN jampa.cemiterio c ON ST_Contains(b.geom, c.geom);

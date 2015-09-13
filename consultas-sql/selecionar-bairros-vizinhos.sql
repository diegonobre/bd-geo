-- Selecionar bairros vizinhos ao bairro dos Bancários

--# A função ST_Touches retorna TRUE se existir pelo menos um ponto em comum entre as áreas
--# http://www.postgis.net/docs/ST_Touches.html

SELECT b2.bairro, b2.geom
  FROM jampa.bairro b1
  JOIN jampa.bairro b2 ON ST_Touches(b1.geom , b2.geom)
 WHERE b2.bairro <> 'Bancarios'
   AND b1.bairro =  'Bancarios'

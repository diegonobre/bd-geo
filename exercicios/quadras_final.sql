-- Exercício: Criar uma tabela chamada “quadras_final” para armazenar informações a respeito das quadras abaixo:

-- DROP TABLE quadras_final;
CREATE TABLE quadras_final (codigo serial NOT NULL PRIMARY KEY, nome TEXT);

-- Área Total
SELECT AddGeometryColumn ('public', 'quadras_final', 'linha', -1, 'LINESTRING', 2);
INSERT INTO quadras_final (nome, linha) VALUES ('Área Total', ST_GeomFromText('LINESTRING(0 0, 21 0, 21 14, 0 14, 0 0)'));
SELECT codigo, nome, linha FROM quadras_final;

-- Q1 - Quadrado
SELECT AddGeometryColumn ('public', 'quadras_final', 'poligono', -1, 'POLYGON', 2);
INSERT INTO quadras_final (nome, poligono) VALUES ('Q1 - Quadrado', ST_GeomFromText('POLYGON((2 2, 11 2, 11 9, 2 9, 2 2))'));

-- Q2 - Hexágono
INSERT INTO quadras_final (nome, poligono) VALUES ('Q2 - Hexágono', ST_GeomFromText('POLYGON((12 7, 14 3, 18 3, 20 7, 18 11, 14 11, 12 7))'));

SELECT codigo, nome, poligono FROM quadras_final;
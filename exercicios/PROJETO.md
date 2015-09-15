# Projeto
## REGRAS:
 - Grupo de 2 
 - Vale nota de 0 - 10
 - Data de Entrega: 24/09/2015
 - Não entregar o trabalho significa nota 0


## Utilizando a base de dados de João Pessoa:
 1) Criar um documento descrevendo o objetivo, codigo SQL e o resultado das consultas (No caso das consultas que são rederizadas no OpenJump, tirar um screenshot).
  1.1) O documento devera conter 15 consultas utilizando pelo menos 10 dos operadores abaixo: 
  1.2) Deverão ser utilizadas pelo menos 5 tabelas deferentes nas consultas.

Distance(geometry, geometry) 
Equals(geometry, geometry) 
Disjoint(geometry, geometry) 
Intersects(geometry, geometry) 
Touches(geometry, geometry) 
Crosses(geometry, geometry) 
Within(geometry, geometry) 
Overlaps(geometry, geometry) 
Contains(geometry, geometry) 
Centroid(geometry) 
Area(geometry) 
Length(geometry) 
PointOnSurface(geometry) 
Boundary(geometry) 
Buffer(geometry, double, [integer]) 
Intersection(geometry, geometry) 
Difference(geometry, geometry) 
GeomUnion(geometry, geometry)
  
 
2) Importar o shape de parada de onibus de João  (arquivo: Paradas-Onibus-Set-2013-Semob.zip) para o PostGIS
 2.1) Criar uma consulta para listar as paradas de onibus mais proximas a sua casa.
 2.2) Criar uma consulta para listar a quantidadede paradas de onibus no bairro em que você mora.

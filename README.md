# bd-geo
Scripts da aula de Banco de Dados Geográfico utilizando PostGIS

## Instruções de Instalação e importação de scripts
### Criar usuário padrão
```sql
CREATE ROLE bdgeo LOGIN SUPERUSER CREATEDB PASSWORD 'bdgeo';
```
### Criar do banco de dados e schemas
```sql
CREATE DATABASE bdgeo OWNER bdgeo;
```
### Adicionar extensões do PostGis
  * No Windows será necessário apenas clicar com o botão direito do mouse em "extensions" e selecionar as extensões abaixo
  * No Linux executar a instalação dos pacotes abaixo (já deve existir o PostgreSQL instalado)
    * Instruções originais: https://trac.osgeo.org/postgis/wiki/UsersWikiPostGIS21Ubuntu1404src

```shell
sudo apt-get install build-essential libgeos-c1 libgdal-dev libproj-dev libjson0-dev libxml2-dev libxml2-utils xsltproc docbook-xsl docbook-mathml

# Build com configuração básica
wget http://download.osgeo.org/postgis/source/postgis-2.1.8.tar.gz
tar xfz postgis-2.1.8.tar.gz
cd postgis-2.1.8

./configure
make
sudo make install
sudo ldconfig
sudo make comments-install

# Criação de link simbólico para a instalação do PostgreSQL enxergar as novas extensões
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/shp2pgsql
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/pgsql2shp
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/raster2pgsql
```

### Verificar se as seguintes extensões existem:

```sql
-- DROP EXTENSION postgis;
CREATE EXTENSION postgis;

-- DROP EXTENSION postgis_topology;
CREATE EXTENSION postgis_topology;
```

### Download dos ShapeFiles http://geo.joaopessoa.pb.gov.br/digeoc/htmls/donwloads.html

  * Gerar SQL a partir do ShapeFile (Windows)
  * Bairros: shp2pgsql -c -W "latin1" c:\temp\dados\Bairros\Bairros.shp jampa.bairro jampa > c:\temp\dados\Bairros\Bairros.sql
  * Limite: shp2pgsql -c -W "latin1" c:\temp\dados\Limite\Limite.shp jampa.limite jampa > c:\temp\dados\Limite\Limite.sql
  * Mata do Buraquinho: shp2pgsql -c -W "latin1" c:\temp\dados\Matadoburaquinho\Matadoburaquinho.shp jampa.mata_do_buraquinho jampa > c:\temp\dados\Matadoburaquinho\Matadoburaquinho.sql
  * Praças: shp2pgsql -c -W "latin1" c:\temp\dados\Pracas\Praca.shp jampa.praca jampa > c:\temp\dados\Pracas\Praca.sql
  * Quadras: shp2pgsql -c -W "latin1" c:\temp\dados\Quadras\Quadras.shp jampa.quadra jampa > c:\temp\dados\Quadras\Quadras.sql
  * Rios: shp2pgsql -c -W "latin1" c:\temp\dados\Rios\Rios.shp jampa.rio jampa > c:\temp\dados\Rios\Rios.sql
  * Setores: shp2pgsql -c -W "latin1" c:\temp\dados\Setores\Setores.shp jampa.setor jampa > c:\temp\dados\Setores\Setores.sql

  * Importar arquivos SQL (ou executar manualmente)
```sql
SELECT * FROM jampa.bairro;
SELECT * FROM jampa.limite;
SELECT * FROM jampa.mata_do_buraquinho;
SELECT * FROM jampa.praca;
SELECT * FROM jampa.quadra;
SELECT * FROM jampa.rio;
SELECT * FROM jampa.setor;
```

## Arquivos com Erro
  * Hidrografia
  * Limite Marítimo
  * Quadra

## Exercício proposto
  * Criar uma tabela chamada "lote_final" para armazenar infromações a respeito dos lotes abaixo

## Leituras recomendadas
  * PostGIS Documentation: http://postgis.net/documentation
  * OSGeo (Open Source Geospatial Foundation): http://www.osgeo.org/
  
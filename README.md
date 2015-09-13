# OSGeo
Dicas e tutoriais para quem deseja aprender a trabalhar com Banco de Dados Geográfico Open Source. Neste projeto é utilizado PostGIS (extensão para o banco de dados PostgreSQL) e OpenJump (aplicativo visualizador e gerenciador de informações geográficas). Projeto iniciado no curso de Pós-graduação em Administração de Banco de Dados (Estácio/iDez), disciplina "Banco de Dados de Informações Geográficas" com o professor Eduardo Nóbrega.

## Leituras recomendadas
 * PostGIS Documentation: http://postgis.net/documentation
 * OSGeo (Open Source Geospatial Foundation): http://www.osgeo.org/

## Primeiros passos
 * Instruções de Instalação do PostGIS
 * Criação do primeiro banco de dados
 * Conversão e importação de ShapeFiles

### Adicionar extensões do PostGis
 * No Windows será necessário apenas clicar com o botão direito do mouse em "extensions" e selecionar as extensões "postgis" e "postgis_topology"
 * No Linux executar a instalação dos pacotes abaixo (já deve existir o PostgreSQL instalado)
  * Instruções originais: https://trac.osgeo.org/postgis/wiki/UsersWikiPostGIS21Ubuntu1404src

```shell
sudo apt-get install build-essential libgeos-c1 libgdal-dev libproj-dev libjson0-dev libxml2-dev libxml2-utils xsltproc docbook-xsl docbook-mathml

# Download do código fonte do PostGIS
wget http://download.osgeo.org/postgis/source/postgis-2.1.8.tar.gz
tar xfz postgis-2.1.8.tar.gz
cd postgis-2.1.8

# instalação com configurações básicas (com suporte a raster e topology)
./configure
make
sudo make install
sudo ldconfig
sudo make comments-install

# criação de link simbólico para a instalação do PostgreSQL enxergar as novas extensões
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/shp2pgsql
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/pgsql2shp
sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/raster2pgsql
```

### Criar usuário padrão
```sql
CREATE ROLE bdgeo LOGIN SUPERUSER CREATEDB PASSWORD 'bdgeo';
```
### Criar do banco de dados e schemas
```sql
CREATE DATABASE bdgeo OWNER bdgeo;
```

### Criar as extensões abaixo no banco de dados
```sql
-- DROP EXTENSION postgis;
CREATE EXTENSION postgis;

-- DROP EXTENSION postgis_topology;
CREATE EXTENSION postgis_topology;
```

### Download e conversão dos ShapeFiles 

 * Download dos mapeamentos de João Pessoa http://geo.joaopessoa.pb.gov.br/digeoc/htmls/donwloads.html
 * Gerar SQL a partir do ShapeFile (substituir "PATH" pelo caminho onde foi realizado download dos arquivos)
  * No windows utilize o diretório "temp" ou o diretório "data" da instalação do PostgreSQL
```shell
# PATH: diretório contendo o arquivo .SHP
# SCHEMA: nome do schema onde a tabela com os dados do Shape será criada
# NOME_DO_ARQUIVO: nome que será atribuído ao arquivo contendo o SQL do Shape convertido
shp2pgsql -c -W "latin1" PATH\Bairros.shp SCHEMA.TABELA SCHEMA > PATH\NOME_DO_ARQUIVO.sql
```

 * Neste projeto foram geradas as estruturas abaixo (ver diretórios "jampa" e "mundo")
```sql
-- SCHEMA MUNDO
mundo.pais; 

-- SCHEMA JAMPA
jampa.bairro;
jampa.limite;
jampa.mata_do_buraquinho;
jampa.praca;
jampa.quadra;
jampa.rio;
jampa.setor;
```

## Exercício proposto
 * Criar uma tabela chamada "lote_final" para armazenar infromações a respeito dos lotes abaixo

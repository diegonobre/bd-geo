-- Criação do usuário padrão
CREATE ROLE bdgeo LOGIN SUPERUSER CREATEDB PASSWORD 'bdgeo';

-- Criação do banco de dados e schemas
CREATE DATABASE bdgeo OWNER bdgeo;

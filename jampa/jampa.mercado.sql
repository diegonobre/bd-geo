SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "jampa"."mercado" (gid serial,
"id" int4,
"tipo" varchar(20),
"nome" varchar(50),
"bairro" varchar(30),
"reformado" varchar(50),
"data_inter" varchar(20));
ALTER TABLE "jampa"."mercado" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('jampa','mercado','geom','0','POINT',2);
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('1','Mercado Público','Mercado Público Oitizeiro','Oitizeiro','EXISTENTE',NULL,'010100000049B42A5DA17241C04B4CE60CCBA21CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('2','Mercado Público','Mercado Público Ernesto Geisel','Ernesto Geisel','EXISTENTE',NULL,'0101000000D6E32B1C1F6F41C0AA0A9CA34AB51CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('3','Mercado Público','Mercado Público Frei Martinho (RANGEL)','Varjão','EXISTENTE',NULL,'0101000000B1C29F58AC6F41C079D0815C569A1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('4','Mercado Público','Mercado Público do Valentina','Valentina','CONCLUÍDO',NULL,'01010000007BFCF75AA56C41C02CB27C78AECE1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('5','Mercado Público','Mercado Público da Torre','Torre','EXISTENTE','2009/2010','01010000008A1919AA7A6E41C0AD4EE6E052801CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('6','Mercado Público','Mercado Público Tambaú','Tambaú','EXISTENTE',NULL,'0101000000BBC27D37856941C0710EE2B7F8701CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('7','Mercado Público','Mercado Público Miramar','Miramar','EXISTENTE',NULL,'0101000000D1F1CEA8106B41C002E4EF72F77E1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('8','Mercado Público','Mercado Público de Mangabeira','Mangabeira','EXISTENTE',NULL,'0101000000FFE5A10A8D6B41C0EF2432B86BB01CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('9','Mercado Público','Mercado Público de Jaguaribe','Jaguaribe','EXISTENTE',NULL,'01010000004F738FBB846F41C05923767BF2891CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('10','Mercado Público','Mercado Público de Cruz das Armas','Cruz das Armas','EM LICITAÇÃO','2009/2010','0101000000DB7A201EA57141C080CDC529858E1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('11','Mercado Público','Mercado Central','Centro','EM ANDAMENTO','2006/2007/2008/2009','0101000000ECFA918C907041C0E45EBE69FD7D1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('12','Mercado Público','Feirinha PAM Primavera','Centro','EXISTENTE',NULL,'01010000001ED5C9F86F7141C07E0FCA5CAA7B1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('13','Mercado Público','Mercado Público Castelo Branco','Castelo Branco','EXISTENTE',NULL,'010100000032263C10E96B41C03D098B76B3841CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('14','Mercado Público','Mercado Público Bairro dos Estados','Bairro dos Ipes','EXISTENTE',NULL,'010100000082E397C6B06D41C091C884F15D6D1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('17','Mercado Publico','Mercado Público Funcionários','Funcionarios','EXISTENTE',NULL,'0101000000FFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFF');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('0','Mercado Público','Mercado do Bessa','Bessa','CONCLUÍDO',NULL,'0101000000E85273BC036C41C094AA32BD00451CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('0','Centro Comercial','Centro de comércio de passagem','Centro','CONCLUÍDO','2006','0101000000295A021CA67041C0D14FC0775A781CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('0','Centro Comercial','Centro de Comércio e Serviços Frutuoso Barbosa','Centro','CONCLUÍDO',NULL,'0101000000CBE57292E07041C039E3DB5ECA791CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('0','Centro Comercial','Centro Comércio e Serviço Varadouro','Varadouro','EM ANDAMENTO',NULL,'01010000003EB5B073917141C07F23EDBA637C1CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('18','Mercado Publico','Mercado Modelo Varadouro','Varadouro','EXISTENTE',NULL,'010100000085314AD9D57141C0F280E1F29F791CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('19','Mercado Publico','Mercado do Peixe','Tambaú',NULL,NULL,'0101000000C9E57015576941C0F33F75939C701CC0');
INSERT INTO "jampa"."mercado" ("id","tipo","nome","bairro","reformado","data_inter",geom) VALUES ('0','Centro Comercial','Centro Frutuoso Barbosa','Centro','EXISTENTE','2007/2008','01010000006E88266FEB7041C00392C78CB3781CC0');
COMMIT;

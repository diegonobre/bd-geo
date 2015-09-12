SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "jampa"."cemiterio" (gid serial,
"id" int4,
"bairro" varchar(40),
"nome" varchar(50));
ALTER TABLE "jampa"."cemiterio" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('jampa','cemiterio','geom','0','POINT',2);
INSERT INTO "jampa"."cemiterio" ("id","bairro","nome",geom) VALUES ('0','Ilha do Bispo','Cemitério Senhor da Boa Sentença','01010000000A88FA831F7241C04C581BF1917E1CC0');
INSERT INTO "jampa"."cemiterio" ("id","bairro","nome",geom) VALUES ('0','Penha','Cemitério Nossa Senhora da Penha','01010000000B9FCE306B6641C02BE1645E32A81CC0');
INSERT INTO "jampa"."cemiterio" ("id","bairro","nome",geom) VALUES ('0','Bairro dos Estados','Cemitério Santa Catarina','010100000044487C31176E41C0A22F14A360741CC0');
INSERT INTO "jampa"."cemiterio" ("id","bairro","nome",geom) VALUES ('0','Cruz das Armas','Cemitério  São José','0101000000189BABC3637241C05718581376981CC0');
INSERT INTO "jampa"."cemiterio" ("id","bairro","nome",geom) VALUES ('0','Cristo Redentor','Cemitério Cristo Redentor','0101000000A055EB06197041C0A3EB51B88AA31CC0');
COMMIT;

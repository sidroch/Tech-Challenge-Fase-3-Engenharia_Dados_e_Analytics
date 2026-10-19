/* ==========================================
   VALIDAÇÃO CAMADA BRONZE
========================================== */

SELECT COUNT(*)
FROM bronze;

SELECT *
FROM bronze
LIMIT 10;


/* ==========================================
   VALIDAÇÃO CAMADA SILVER
========================================== */

SELECT COUNT(*)
FROM profissionais;

SELECT *
FROM profissionais
LIMIT 10;


/* ==========================================
   VALIDAÇÃO CAMADA SILVER V2
========================================== */

SELECT COUNT(*)
FROM profissionais_v2;

SELECT *
FROM profissionais_v2
LIMIT 10;

SHOW COLUMNS IN profissionais_v2;

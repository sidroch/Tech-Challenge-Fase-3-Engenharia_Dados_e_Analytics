/* ==========================================
   GOLD - GÊNERO
========================================== */

CREATE OR REPLACE VIEW gold_genero AS
SELECT
    "1_b_genero" AS genero,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "1_b_genero";


/* ==========================================
   GOLD - FAIXA ETÁRIA
========================================== */

CREATE OR REPLACE VIEW gold_faixa_etaria AS
SELECT
    "1_a_1_faixa_idade" AS faixa_etaria,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "1_a_1_faixa_idade";


/* ==========================================
   GOLD - NÍVEL PROFISSIONAL
========================================== */

CREATE OR REPLACE VIEW gold_nivel AS
SELECT
    "2_g_nivel" AS nivel,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "2_g_nivel";


/* ==========================================
   GOLD - FAIXA SALARIAL
========================================== */

CREATE OR REPLACE VIEW gold_salario AS
SELECT
    "2_h_faixa_salarial" AS faixa_salarial,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "2_h_faixa_salarial";


/* ==========================================
   GOLD - LINGUAGEM MAIS UTILIZADA
========================================== */

CREATE OR REPLACE VIEW gold_linguagem AS
SELECT
    "4_e_linguagem_mais_usada" AS linguagem,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "4_e_linguagem_mais_usada";


/* ==========================================
   GOLD - CLOUD PREFERIDA
========================================== */

CREATE OR REPLACE VIEW gold_cloud AS
SELECT
    "4_i_cloud_preferida" AS cloud,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "4_i_cloud_preferida";


/* ==========================================
   GOLD - FERRAMENTA BI
========================================== */

CREATE OR REPLACE VIEW gold_bi AS
SELECT
    "4_k_ferramenta_de_bi_preferida" AS ferramenta_bi,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "4_k_ferramenta_de_bi_preferida";


/* ==========================================
   GOLD - IA GENERATIVA
========================================== */

CREATE OR REPLACE VIEW gold_ai AS
SELECT
    "4_m_usa_chatgpt_ou_copilot_no_trabalho" AS uso_ai,
    COUNT(*) AS total
FROM profissionais_v2
GROUP BY "4_m_usa_chatgpt_ou_copilot_no_trabalho";
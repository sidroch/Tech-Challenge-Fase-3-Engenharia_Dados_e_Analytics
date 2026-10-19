# Tech-Challenge-Fase-3-Engenharia_Dados_e_Analytics
Tech-Challenge-Fase-3-FIAP_Pesquisa_State_of_Data_Brasil_2023_2024_2025

## POSTECH - Fase 3 | Pipeline de Dados na AWS
# Visão Geral
Este projeto foi desenvolvido como parte da Fase 3 da Pós Tech em Data Analytics e tem como objetivo construir um pipeline de dados completo utilizando serviços da AWS.

Foram utilizadas as bases da pesquisa State of Data para implementar um Data Lake seguindo a arquitetura Medallion (Bronze, Silver e Gold), contemplando ingestão, catalogação, processamento distribuído com Apache Spark, consultas analíticas com Athena e preparação de indicadores para análise.

# Objetivos do Projeto
- Realizar ingestão de dados no Amazon S3.
- Organizar os dados em camadas Bronze, Silver e Gold.
- Catalogar os dados utilizando AWS Glue.
- Processar dados utilizando Apache Spark.
- Converter arquivos CSV para Parquet.
- Executar consultas analíticas utilizando Amazon Athena.
- Construir indicadores analíticos para apoio à tomada de decisão.

# Arquitetura da Solução

# Tecnologias Utilizadas
- Amazon S3
- AWS Glue Studio
- AWS Glue Crawler
- AWS Glue Data Catalog
- AWS Athena
- Apache Spark (PySpark)
- Apache Parquet

# Estrutura do Data Lake
Bronze
Armazenamento dos dados originais sem qualquer transformação.

Plain Text
bronze/
├── state_of_data_2023/
│ └── State_of_Data_2023.csv
│
├── state_of_data_2024/
│ └── State_of_Data_2024.csv
│
└── state_of_data_2025_2026/
  └── State_of_Data_2025_2026.csv


# Características
- Dados brutos
- Sem tratamento
- Formato CSV
- Histórico preservado

# Silver
Processamento dos dados utilizando Apache Spark.
- Silver Inicial
silver/
  └── profissionais/

# Transformações Aplicadas
- Leitura dos CSVs com cabeçalho
- Remoção de linhas vazias
- Remoção de registros duplicados
- Limpeza dos nomes das colunas
- Conversão para Parquet
- Compressão Snappy

# Gold
Views analíticas construídas sobre a Silver.
- gold_genero
- gold_faixa_etaria
- gold_nivel
- gold_salario
- gold_linguagem
- gold_cloud
- gold_bi
- gold_ai

# Pipeline ETL
Extração
- Fonte: Amazon S3
- Arquivos:
-   State_of_Data_2023.csv
-   State_of_Data_2024.csv
-   State_of_Data_2025_2026.csv

# Transformação
Job Spark:
- job_bronze_to_silver

Principais etapas:
Leitura CSV
↓
Limpeza de colunas
↓
Remoção de registros inválidos
↓
Conversão para Parquet


# Carga
Destino:
- s3://postech-state-of-data/silver/profissionais_v2/

Formato:
- Apache Parquet
  
# Estrutura Catalogada
Glue Catalog
- Database: state_of_data
- Tabelas: bronze e profissionais.

# Views:
- gold_genero
- gold_faixa_etaria
- gold_nivel
- gold_salario
- gold_linguagem
- gold_cloud
- gold_bi
- gold_ai

# Principais Consultas Analíticas
- Distribuição por Gênero
SELECT *
FROM gold_genero
ORDER BY total DESC;

- Faixa Etária
SELECT *
FROM gold_faixa_etaria
ORDER BY total DESC;

- Senioridade
SELECT *
FROM gold_nivel
ORDER BY total DESC;

- Faixa Salarial
SELECT *
FROM gold_salario
ORDER BY total DESC;


- Linguagem Mais Utilizada
SELECT *
FROM gold_linguagem
ORDER BY total DESC;

- Cloud Preferida
SELECT *
FROM gold_cloud
ORDER BY total DESC;

- Uso de IA Generativa
SELECT *
FROM gold_ai
ORDER BY total DESC;

# Insights Obtidos
- Linguagens de Programação


<img width="4032" height="1711" alt="image" src="https://github.com/user-attachments/assets/3670fd65-155b-485f-ad16-24bb2e728f93" />

# Conclusão
SQL e Python permanecem como as principais linguagens utilizadas pelos profissionais da área de dados.

# Cloud Computing
Plataformas preferidas:
-    Plataforma AWS......1148
-    GCP................. 697
-    Azure............... 563
# Conclusão
A AWS é a plataforma de nuvem predominante entre os profissionais participantes da pesquisa.

# Evidências do Projeto
- bronze_s3.png
- crawler_bronze.png
- athena_bronze.png
- glue_job_spark.png
- silver_parquet.png
- crawler_silver.png
- profissionais_v2.png
- gold_views.png

# Estrutura do Repositório
postech-fase3/
 
├── README.md
│
├── docs/
│ ├── arquitetura.png
│ └── evidencias/
│
├── scripts/
│ └── job_bronze_to_silver_v2.py
│
├── sql/
│ ├── bronze.sql
│ ├── silver.sql
│ └── gold.sql
│
└── presentation/
└── slides.pdf


## Resultados Alcançados

✅ Amazon S3
✅ Camada Bronze
✅ AWS Glue Crawlers
✅ Glue Data Catalog
✅ Amazon Athena
✅ Apache Spark
✅ Conversão CSV → Parquet
✅ Camada Silver
✅ Camada Gold
✅ Consultas Analíticas
✅ Arquitetura Medallion

# Conclusão
O projeto demonstrou a construção de um pipeline de dados completo na AWS, contemplando ingestão, processamento, catalogação e análise de dados utilizando serviços gerenciados e processamento distribuído com Apache Spark.

A arquitetura implementada permite escalabilidade, governança dos dados e criação de análises para suporte à tomada de decisão.

### Melhorias aplicadas
- Estrutura profissional para GitHub.
- Descrição completa da arquitetura Bronze → Silver → Gold.
- Documentação das tecnologias AWS utilizadas.
- Inclusão dos scripts, views e evidências.
- Seção de insights com os resultados reais obtidos nas views Gold.
- Organização adequada para avaliação acadêmica e portfólio profissional.


import sys
import re
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session

job = Job(glueContext)
job.init(args['JOB_NAME'], args)

# Leitura do CSV original utilizando cabeçalho
df = spark.read \
    .option("header", "true") \
    .option("multiLine", "true") \
    .option("escape", "\"") \
    .csv("s3://postech-state-of-data/bronze/state_of_data_2024/")

# Limpeza dos nomes das colunas
new_columns = []

for col_name in df.columns:
    clean_name = re.sub(r'[^a-zA-Z0-9_]', '_', col_name)
    clean_name = re.sub(r'_+', '_', clean_name)
    clean_name = clean_name.strip('_')

    if clean_name == "":
        clean_name = "coluna"

    new_columns.append(clean_name)

df = df.toDF(*new_columns)

# Remoção de linhas vazias
df = df.na.drop(how="all")

# Remoção de duplicados
df = df.dropDuplicates()

# Escrita na camada Silver V2
df.write \
    .mode("overwrite") \
    .parquet("s3://postech-state-of-data/silver/profissionais_v2/")

print("Silver V2 criada com sucesso")

job.commit()
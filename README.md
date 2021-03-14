Adaptado desde diferentes fuentes.

# Preparar la máquina

``/bin/bash install-docker.sh``

## Up


docker-compose -p "hive-hadoop" -f docker-compose.hive.yml up -d --remove-orphans   

docker-compose -p "spark" -f docker-compose.spark.yml up -d --remove-orphans


## Stop

docker-compose -p "hive-hadoop" -f docker-compose.hive.yml down

docker-compose -p "spark" -f docker-compose.spark.yml down

Adaptado desde diferentes fuentes.

# Docker-compose

``
docker-compose -p "hive-hadoop" -f docker-compose.hive.yml up -d --remove-orphans   

docker-compose -p "spark" -f docker-compose.spark.yml up -d --remove-orphans 
``


# Stop
``
docker-compose -p "hive-hadoop" -f docker-compose.hive.yml down
docker-compose -p "spark" -f docker-compose.spark.yml down ``

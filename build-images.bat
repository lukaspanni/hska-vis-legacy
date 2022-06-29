cd nginx
docker build -t nginx-proxy .
cd ..
docker build -t web-shop-db-image -f docker/DockerfileMySQL .
docker build -t frontend -f docker/Dockerfile .
cd microservices/category-service
docker build -t category-service .
cd ../product-service
docker build -t product-service .
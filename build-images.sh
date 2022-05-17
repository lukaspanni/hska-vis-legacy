cd nginx
docker build -t nginx-proxy .
cd ..
docker build -t web-shop-db-image -f docker/DockerfileMySQL .
cd microservices/category-service
docker build -t category-service .
cd ../product-service
docker build -t product-service .
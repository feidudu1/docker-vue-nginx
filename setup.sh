image_version=`data + %Y%m%d%H%M`;
docker-compose stop || true;
docker-compose rm || true;
docker-compose build;
docker ps;
docker-compose up -d;
docker system prune -a -f;
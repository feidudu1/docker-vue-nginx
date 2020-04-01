docker-compose stop || true;
docker-compose rm || true;
docker-compose build;
docker ps;
docker-compose up -d;
docker system prune -a -f;
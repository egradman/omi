daemon:
  docker compose up -d --remove-orphans

up:
  docker compose up

down:
  docker compose down

redis-cli:
  docker compose exec redis redis-cli

build:
  cd hole && pdm export -o requirements.txt --without-hashes
  docker compose build

ngrok:
  ngrok http --domain=frankly-nearby-wombat.ngrok-free.app 8080

watch-sync:
   fd -e py ".*" backend | entr -n just sync
  
sync:
  rsync -avz  --exclude="*.pyc" ./ egradman@dmz.gradman.com:omi

logs:
  docker compose logs --tail 100 --follow

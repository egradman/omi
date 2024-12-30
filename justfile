daemon:
  docker compose up -d

up:
  docker compose up

build:
  docker compose build

ngrok:
  ngrok http --domain=frankly-nearby-wombat.ngrok-free.app 8080

watch-sync:
   fd -e py ".*" backend | entr -n just sync
  
sync:
  rsync -avz  --exclude="*.pyc" ./backend/ egradman@dmz.gradman.com:omi/backend

logs:
  docker compose logs --tail 100 --follow

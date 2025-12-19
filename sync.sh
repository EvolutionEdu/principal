# !/bin/bash

git submodule sync
git submodule update --remote --merge

git pull origin main

cd clients

docker compose build
docker compose up -d

cd ..
cd services
docker compose build
docker compose up -d
cd ..
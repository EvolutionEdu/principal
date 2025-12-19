# !/bin/bash

git submodule sync
git submodule update --remote --merge

git pull origin main

docker compose build
docker compose up -d
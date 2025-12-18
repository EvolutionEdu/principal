# !/bin/bash

git submodule sync
git submodule update --remote --merge

git pull origin main
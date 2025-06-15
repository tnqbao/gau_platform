#!/bin/bash
git pull origin master

./init.sh

cd ../

cd database-zone || exit 1
docker-compose down
docker-compose up -d

cd ../base-application-zone || exit 1
docker-compose down
./restart_gau_account_service.sh

cd service-zone || exit 1
docker-compose down
docker-compose up -d


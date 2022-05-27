# controlfloor_docker

required: Docker, Docker Compose, Usbmuxd

1. clone the repo

2. exec "Dockerfile/cf-gui/1.1/build.sh GIT_TOKEN"
3. exec "Dockerfile/cf-provider/1.1/build.sh GIT_TOKEN"

4. edit "compose/docker-compose.yml"      one provider container per iPhone
5. edit "compose/.env"                    iPhone's UDIDs
6. edit "compose/cf-gui/config.json"      cf settings
7. edit "compose/cf-providers/*"          provider related settings

7. "cd compose"
8. docker-compose up -d

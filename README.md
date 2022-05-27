# controlfloor_docker

required: Docker, Docker Compose, Usbmuxd

1. clone the repo

2. exec "Dockerfile/cf-gui/1.1/build.sh GIT_TOKEN"
3. exec "Dockerfile/cf-provider/1.1/build.sh GIT_TOKEN"

4. edit "compose/.env" with iPhone's UDIDs
5. edit "compose/cf-gui/config.json"
6. edit "compose/cf-providers/*"

7. "cd compose"
8. docker-compose up -d

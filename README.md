# OS details and temperatures using docker container.

## Building from Dockerfile
```
$ docker build -t idanaila/os-details .
$ docker run --rm --privileged=true idanaila/os-details
```
## Pull from Docker Hub

Dockerhub:
https://hub.docker.com/r/idanaila/os-details

```
$ docker pull idanaila/os-details:latest
$ docker run --rm --privileged=true idanaila/os-details:latest


  ____   _____    _____ _               _               Hostname: 99ee883394b9
 / __ \ / ____|  / ____| |             | |              CPU: i5-5200U CPU 2.20GHz x 4
| |  | | (___   | |    | |__   ___  ___| | _____        OS: ubuntu
| |  | |\___ \  | |    | '_ \ / _ \/ __| |/ / __|       Memory: 1.7Gi / 15Gi
| |__| |____) | | |____| | | |  __/ (__|   <\__ \       Uptime: 2:35
 \____/|_____/   \_____|_| |_|\___|\___|_|\_\___/       CPU load: 4.6875%



  _______                   _____       KINGSTONSA400S37480G: 35 C
 |__   __|                 / ____|      KINGSTONSA400S37240G: 32 C
    | | ___ _ __ ___  _ __| (___        ST1000LM024HN-M101MBB: 39 C
    | |/ _ \ '_ ` _ \| '_ \\___ \       Core 0: +47.0
    | |  __/ | | | | | |_) |___) |      Core 1: +46.0
    |_|\___|_| |_| |_| .__/_____/ 
                     | |          
                     |_|   

```

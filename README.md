# OS details and temperatures using docker container.

## Building from Dockerfile
```
$ docker build .
$ docker run --rm --privileged=true <image_id>
```
## Pull from Docker Hub

Dockerhub:
https://hub.docker.com/r/idanaila/os-details

```
$ docker pull idanaila/os-details:latest
$ docker run --rm --privileged=true idanaila/os-details:latest

  ____   _____    _____ _               _               Hostname: 0b83602e82e4
 / __ \ / ____|  / ____| |             | |              CPU: i5-5200U CPU 2.20GHz x 4
| |  | | (___   | |    | |__   ___  ___| | _____        OS: ubuntu
| |  | |\___ \  | |    | '_ \ / _ \/ __| |/ / __|       Memory: 2.4Gi / 15Gi
| |__| |____) | | |____| | | |  __/ (__|   <\__ \       Uptime: 9:52
 \____/|_____/   \_____|_| |_|\___|\___|_|\_\___/       Users loged: 0


########## temperatures ##########

KINGSTONSA400S37480G: 37 C
KINGSTONSA400S37240G: 32 C
ST1000LM024HN-M101MBB: 38 C
Core 0: +58.0
Core 1: +57.0

```

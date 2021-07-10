OS details and temperatures using docker container.
Hddtemp and lm-sensors are used to gather hardware temperatures.

Dockerhub:
https://hub.docker.com/r/idanaila/os-details


```
$ docker build .
$ docker run --privileged=true <image_id>

  ____   _____    _____ _               _               Hostname: 02e703dc9bb1
 / __ \ / ____|  / ____| |             | |              CPU: i5-5200U CPU 2.20GHz x 4
| |  | | (___   | |    | |__   ___  ___| | _____        OS: ubuntu
| |  | |\___ \  | |    | '_ \ / _ \/ __| |/ / __|       Memory: 2.9Gi / 15Gi
| |__| |____) | | |____| | | |  __/ (__|   <\__ \       Uptime: 6:26
 \____/|_____/   \_____|_| |_|\___|\___|_|\_\___/       Users loged: 0
                                                       

########## temperatures ##########

/dev/sda: KINGSTON SA400S37480G: 33 C
/dev/sdb: KINGSTON SA400S37240G: 30 C
Core 0: +54.0
Core 1: +53.0
```

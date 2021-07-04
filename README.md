OS details and temperatures using docker container.
Is used hddtemp and lm-sensors to gather hardware temperatures.

Dockerhub:
https://hub.docker.com/r/dion7/os-details


```
$ docker build .
$ docker ps -a  # get container id
$ docker run -t -d --rm --privileged=true <container_id>
$ docker exec -it <container_id> ./checks.sh
  ____   _____    _____ _               _               Hostname: 02e703dc9bb1
 / __ \ / ____|  / ____| |             | |              CPU: i5-5200U CPU 2.20GHz x 4
| |  | | (___   | |    | |__   ___  ___| | _____        OS: ubuntu
| |  | |\___ \  | |    | '_ \ / _ \/ __| |/ / __|       Memory: 2.9Gi / 15Gi
| |__| |____) | | |____| | | |  __/ (__|   <\__ \       Uptime: 6:26
 \____/|_____/   \_____|_| |_|\___|\___|_|\_\___/       Users loged: 0
                                                       

########## temperatures ##########

/dev/sda: KINGSTON SA400S37480G: 33 C
/dev/sdb: KINGSTON SA400S37240G: 30 C
/dev/sdc: ST1000LM024 HN-M101MBB:  31 C
Core 0: +54.0
Core 1: +53.0
```

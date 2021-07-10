FROM ubuntu

# install hddtemp(HDD temperatures) and sensors (CPU temperatures)
RUN apt-get update && apt-get -y install debianutils libc6 libcap-ng0 libgcc1 libselinux1 lsb-base smartmontools lm-sensors

# add the script and give permissions
ADD checks.sh /
RUN chmod +x /checks.sh
RUN chmod +x /usr/bin/sensors
RUN chmod +x /usr/sbin/smartctl

CMD ["./checks.sh"]

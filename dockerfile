FROM ubuntu

# install hddtemp(HDD temperatures) and sensors (CPU temperatures)
RUN apt-get update && apt-get -y install build-essential hddtemp lm-sensors

# add the script and give permissions
ADD checks.sh /
RUN chmod +x /checks.sh
RUN chmod +x /usr/sbin/hddtemp
RUN chmod +x /usr/bin/sensors

CMD ["./checks.sh"]

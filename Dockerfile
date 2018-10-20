#
# FROM ubuntu:16.04
FROM ubuntu:latest
#
RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
    bash \
    default-jre
#
COPY mqtt_manager.sh mqtt-monitor-0.0.1-SNAPSHOT.jar /usr/local/bin/

RUN chmod 755 /usr/local/bin/*.sh
#
ENTRYPOINT ["/usr/local/bin/mqtt_manager.sh"]
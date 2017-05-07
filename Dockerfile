FROM fedora:25
MAINTAINER Hannes Hochreiner <hannes@hochreiner.net>
RUN dnf -y update
RUN dnf -y install createrepo nodejs
COPY src/main.js /opt/createrepo/main.js
WORKDIR /repo
VOLUME ["/repo"]
CMD ["node", "/opt/createrepo/main.js"]

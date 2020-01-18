FROM node:10-alpine

LABEL Author="Fernando <naando.araujo@gmail.com>"

RUN npm install -g selenium-side-runner

ADD docker-entrypoint.sh /opt/bin/docker-entrypoint.sh
RUN chmod +x /opt/bin/docker-entrypoint.sh

RUN mkdir /sides

WORKDIR /root

VOLUME [ "/sides" ]

CMD "/opt/bin/docker-entrypoint.sh"

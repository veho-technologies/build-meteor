FROM node:4

MAINTAINER Daniel Holzmann <d@velopment.at>

COPY tools /opt/tools

ENV USERNAME dev

RUN /opt/tools/install.sh

USER $USERNAME

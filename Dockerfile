FROM node:4

MAINTAINER Daniel Holzmann <d@velopment.at>

COPY tools /opt/tools

# install git-crypt and Meteor
RUN /opt/tools/install-git-crypt.sh \
    && /opt/tools/install-meteor.sh \

    # clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && npm cache clear

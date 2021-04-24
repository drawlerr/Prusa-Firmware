FROM ubuntu:bionic
ARG UID
ARG GID

# packages
RUN apt-get update && apt-get install -y wget hugo make cmake zip xxd python python3 git gawk

RUN useradd prusa -u ${UID} -g ${GID}
RUN mkdir /home/prusa && chown ${UID}:${GID} /home/prusa
USER prusa

# workdir
VOLUME /workdir
WORKDIR workdir

ENTRYPOINT /bin/bash
#CMD ./PF-build.sh

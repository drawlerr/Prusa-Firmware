FROM ubuntu:bionic
ARG UID
ARG GID

# packages
RUN apt-get update && apt-get install -y wget hugo xpdf make cmake zip xxd python

RUN useradd prusa -u ${UID} -g ${GID}
USER prusa

# workdir
VOLUME /workdir
WORKDIR workdir

ENTRYPOINT /bin/bash
#CMD ./PF-build.sh

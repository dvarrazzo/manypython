# manypython_x86_64 - several Python versions on 64 bit platform
FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install \
	build-essential bc wget libssl-dev zlib1g-dev libbz2-dev libreadline-dev
ADD build.sh /
RUN chmod +x /build.sh
RUN /build.sh
CMD /bin/bash

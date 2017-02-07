# manypython_i686 - several Python versions on 32 bit platform
FROM ioft/i386-ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install \
	build-essential wget libssl-dev zlib1g-dev libbz2-dev libreadline-dev
ADD build.sh /
RUN chmod +x /build.sh
RUN /build.sh
CMD /bin/bash

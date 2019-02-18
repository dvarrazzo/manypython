# manypython_i686 - several Python versions on 32 bit platform
FROM ioft/i386-ubuntu:16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	build-essential \
    bc \
    ca-certificates \
    iproute2 \
    libbz2-dev \
    libffi-dev \
    libpq-dev \
    libreadline-dev \
    libssl-dev \
    wget \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

ADD build.sh /
RUN chmod +x /build.sh
RUN /build.sh
CMD /bin/bash

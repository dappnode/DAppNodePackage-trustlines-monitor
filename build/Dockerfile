#FROM trustlines/tlbc-monitor:0.2.1
FROM trustlines/tlbc-monitor@sha256:9791e5536e7a9658c2fc7b6adcde148591d005d6e0d897fb016a96a76b12b319

RUN apt-get update && \
	apt-get install -y dnsutils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD entrypoint.sh /usr/local/bin/entrypoint

ENTRYPOINT ["entrypoint"]


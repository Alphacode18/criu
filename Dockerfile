FROM alpine:3.13

ADD . /

CMD ["/bin/sh"]

RUN /bin/sh -c apk --update add build-base protobuf-dev protobuf-c-dev openssl iptables wget tar ip6tables linux-headers libnet-dev libnl3-dev libcap-dev python 	libaio-dev pkgconfig asciidoc xmlto git

RUN /bin/sh -c wget https://download.openvz.org/criu/criu-3.13.tar.bz2 	&& tar xvfj criu-3.13.tar.bz2 	&& cd criu-3.13 && make && make install

RUN /bin/sh -c apk del wget tar git && rm -rf /var/cache/apk/* criu-3.13.tar.bz2 criu-3.13/
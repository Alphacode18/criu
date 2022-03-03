FROM alpine:3.13

ADD . /

CMD ["/bin/sh"]

RUN apk update

RUN apk add build-base protobuf-dev protobuf-c-dev openssl iptables wget tar ip6tables linux-headers libnet-dev libnl3-dev libcap-dev python2 libaio-dev pkgconfig asciidoc xmlto git

RUN make && make install
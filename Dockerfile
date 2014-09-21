FROM google/golang
MAINTAINER Ian Blenke <ian@blenke.com>

RUN go get github.com/couchbaselabs/cbfs && \
    go build -o /cbfs github.com/couchbaselabs/cbfs

ADD installer /installer
CMD /installer


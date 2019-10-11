FROM golang:1.12 as builder
ARG GO111MODULE=on
ARG GOPROXY=https://goproxy.cn/
WORKDIR /go/src/app
RUN go get -v  github.com/gohugoio/hugo  


#final stage 
FROM golang:1.12
LABEL maintainer="wuxingzhong@sunniwell.net"

COPY --from=builder  /go/bin/hugo  /go/bin/hugo


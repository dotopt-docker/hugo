FROM golang:1.12
# ARG GO111MODULE=on
# ARG GOPROXY=https://goproxy.cn/

RUN go get -v  github.com/gohugoio/hugo
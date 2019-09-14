FROM golang:1.13-alpine
RUN apk update
RUN apk add git
ENV GOPROXY=goproxy.io


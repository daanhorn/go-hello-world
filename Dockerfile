FROM golang

ENV http_proxy http://10.30.8.221:3128/
ENV https_proxy http://10.30.8.221:3128/

ENV GOPATH /go-hello-world
WORKDIR /go-hello-world

RUN git clone https://github.com/daanhorn/go-hello-world.git /go-hello-world/src

RUN go build src/hello.go

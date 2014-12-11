FROM golang

ENV http_proxy http://10.30.8.221:3128/
ENV https_proxy http://10.30.8.221:3128/

#RUN apt-get update && apt-get install -y \
#subversion \
#--no-install-recommends \
#&& rm -rf /var/lib/apt/lists/*

ENV GOPATH /go-hello-world
WORKDIR /go-helllo-world

#RUN svn checkout http://svn.nl.rsg/svn/metropool/test/go-hello-world /go-hello-world/src
RUN git clone https://github.com/simonvanderveldt/go-hello-world-http /go-hello-world/src

RUN go build go-hello-world

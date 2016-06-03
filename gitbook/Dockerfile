FROM ubuntu:14.04

MAINTAINER Zou Yapeng <zyp19901009@gmail.com>

ARG VERSION=2.2.0

LABEL version=$VERSION

RUN sudo apt-get update -y &&\
	sudo apt-get install -y nodejs npm git &&\
	ln -s /usr/bin/nodejs /usr/bin/node

RUN sudo npm install --global gitbook-cli &&\
	gitbook fetch ${VERSION} &&\
	npm cache clear &&\
	rm -rf /tmp/*


WORKDIR /gitbook

VOLUME ["/gitbook","/html"]

EXPOSE 4000 35729

ENTRYPOINT ["/usr/local/bin/gitbook"]

CMD ["serve"]

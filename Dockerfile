# A basic Dockerfile to run a Reveal.js Slideshow
FROM ubuntu:14.04

MAINTAINER Conner Swann

RUN apt-get update && apt-get install -y \
	nodejs-legacy \ 
	npm

RUN npm install -g grunt-cli

RUN mkdir /src
WORKDIR /src
ADD package.json package.json
RUN npm install
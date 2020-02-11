#
# Java 8 Build Image
# Docker image with tools and scripts installed to support the building of a Java 1.8 jar with Maven
#

FROM adoptopenjdk/openjdk8:alpine
LABEL Maintainer="Agile Digital <info@agiledigital.com.au>"
LABEL Description="Docker image with tools and scripts installed to support the building of a Java 1.8 jar with Maven" Vendor="Agile Digital" Version="0.1"

RUN apk add --update --no-cache bash=5.0.11-r1 maven=3.6.3-r0

ENV HOME /home/jenkins

RUN addgroup -S -g 10000 jenkins
RUN adduser -S -u 10000 -h $HOME -G jenkins jenkins

WORKDIR /home/jenkins

USER jenkins
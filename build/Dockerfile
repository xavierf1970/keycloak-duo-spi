FROM centos:7 AS base
RUN yum -y install maven && yum clean all && rm -rf /var/cache/yum/*
RUN mkdir /build
COPY ./duo_java /build/duo_java

FROM base AS build
RUN cd /build/duo_java/DuoWeb && mvn clean test install && rm -rf /build

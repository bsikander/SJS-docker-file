FROM ubuntu:16.04

USER root

ARG BASE_DIR=.

ENV CONT_BASE_FILE_DIR=/usr/share/jobserver
ENV SPARK_MASTER=dummy

RUN mkdir -p $CONT_BASE_FILE_DIR/database

RUN apt update && \
    apt install -y default-jre && \
    apt install -y default-jdk && \
    apt install -y less vim

# Copy all files to container directory
COPY $BASE_DIR/ $CONT_BASE_FILE_DIR/
RUN cd $CONT_BASE_FILE_DIR/ && \
    tar -xvf spark-2.2.1-bin-hadoop2.6.tgz

EXPOSE 8090

CMD $CONT_BASE_FILE_DIR/server_start.sh

#CMD /bin/bash
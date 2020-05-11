FROM python:3.7-stretch

ARG USERID
ARG GROUPID

RUN groupadd -g $GROUPID jenkins \
        && useradd -u $USERID -g $GROUPID jenkins

USER jenkins

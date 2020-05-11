FROM python:3.7-stretch

ARG USERID
ARG GROUPID

RUN mkdir /home/jenkins \
        && groupadd -g $GROUPID jenkins \
        && useradd -u $USERID -g $GROUPID -d /home/jenkins jenkins \
        && chown -R jenkins:jenkins /home/jenkins

USER jenkins

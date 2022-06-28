FROM ubuntu:20.04

WORKDIR ~/Docker/

ENV TZ=Europe/Kiev
ENV DEVOPS=Anpilogov

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY insidedocker.sh insidedocker.sh
RUN chmod +x insidedocker.sh

RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y nano

CMD ./insidedocker.sh

EXPOSE 80

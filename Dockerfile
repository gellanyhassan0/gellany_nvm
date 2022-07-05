#Deriving the latest base image
FROM python:latest

LABEL Maintainer="gellanyhassan0"

WORKDIR /home

#COPY requirements.txt ./

RUN apt-get update
RUN apt-get install git -y

RUN git clone https://github.com/gellanyhassan0/gellany_react ./
RUN chmod +x gellany_react.sh
RUN ./gellany_react.sh

CMD python3 -c "import signal; signal.pause()"

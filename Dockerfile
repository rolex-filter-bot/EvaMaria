FROM python:3.11.2

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]

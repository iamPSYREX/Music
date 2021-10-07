FROM python:3.10.0-slim-buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y curl ffmpeg python3-pip

RUN pip3 install -U pip

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

COPY . /app/
WORKDIR /app/

RUN pip3 install -U -r requirements.txt

CMD python3 -m Music
